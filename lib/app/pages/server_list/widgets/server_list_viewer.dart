import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qBitRemote/app/pages/add_server/add_server_page.dart';
import 'package:qBitRemote/app/pages/server_list/bloc/server_list_event.dart';
import 'package:qBitRemote/app/pages/server_list/bloc/server_list_bloc.dart';
import 'package:qBitRemote/app/widgets/MaterialDialog.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/commons/extensions/build_context_ext.dart';
import 'package:qBitRemote/local/models/server_host.dart';

import '../../../../routes.dart';

class ServerListViewer extends StatelessWidget {
  const ServerListViewer({Key? key, required this.servers}) : super(key: key);

  final List<ServerHost> servers;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: servers.length,
        itemBuilder: (BuildContext ctxt, int index) {
          ServerHost server = servers[index];
          return InkWell(
            onTap: () {
              context.read<ServerListBloc>().add(ConnectToServerEvent(server));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: SizedBox(
                height: 96,
                child: Card(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Text(
                                server.name,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16, top: 2),
                              child: Text(
                                server.host,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuButton<int>(
                        icon: Icon(
                          Icons.more_horiz,
                          color: AppColors.moreMenuIconColor,
                        ),
                        onSelected: (int result) {
                          if (result == 1) {
                            Navigator.pushNamed(context, Routes.addServerPage,
                                arguments:
                                    AddServerArguments(server.key, true));
                          } else if (result == 2) {
                            _showDeleteDialog(context, server);
                          }
                        },
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuEntry<int>>[
                          PopupMenuItem<int>(
                              value: 1, child: Text(context.intl().edit)),
                          PopupMenuItem<int>(
                              value: 2, child: Text(context.intl().delete)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  void _showDeleteDialog(BuildContext context, ServerHost server) {
    MaterialDialog(context)
      ..title = context.intl().delete
      ..body = context.intl().questionYouWantDelete(server.name)
      ..positiveButtonText = context.intl().ok
      ..negativeButtonText = context.intl().cancel
      ..setPositiveButtonCallback((dialog) {
        context.read<ServerListBloc>().add(DeleteServerEvent(server));
      })
      ..show();
  }
}
