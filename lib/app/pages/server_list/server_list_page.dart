import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qBitRemote/app/pages/server_list/bloc/server_list_bloc.dart';
import 'package:qBitRemote/app/utils/url_launcher.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/commons/extensions/build_context_ext.dart';
import 'package:qBitRemote/routes.dart';

import 'bloc/server_list_event.dart';
import 'bloc/server_list_state.dart';
import 'widgets/server_list_empty.dart';
import 'widgets/server_list_viewer.dart';

class ServerListPage extends StatefulWidget {
  @override
  _ServerListPageState createState() => _ServerListPageState();
}

class _ServerListPageState extends State<ServerListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.intl().serverList),
        actions: [
          IconButton(
            icon: Icon(Icons.bug_report_outlined),
            onPressed: () {
              UrlLauncher.launchBugReport();
            },
          ),
        ],
      ),
      backgroundColor: AppColors.primaryBackground,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, Routes.addServerPage);
          }),
      body: WillPopScope(
        onWillPop: () async {
          context.read<ServerListBloc>().add(CheckIsHaveSelectedServer());
          return false;
        },
        child: Center(
          child: _ServerListView(),
        ),
      ),
    );
  }
}

class _ServerListView extends StatelessWidget {
  const _ServerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ServerListBloc, ServerListState>(
      buildWhen: (previous, current) {
        return !(current is ServerConnectSuccess) && !(current is ShowError);
      },
      listener: (context, state) {
        if (state is ShowError) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.error),
          ));
        } else if (state is ServerConnectSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              context, Routes.torrentsPage, (route) => false);
        } else if (state is HaveSelectedServer) {
          bool isRootScreen = !Navigator.canPop(context);
          if (isRootScreen) {
            SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          } else if (state.isHave) {
            Navigator.pop(context);
          } else {
            Navigator.pushNamedAndRemoveUntil(
                context, Routes.serverListPage, (route) => false);
          }
        }
      },
      builder: (context, state) {
        if (state is ServerListInitial) {
          return const ServerListEmpty();
        } else if (state is ServerListLoaded) {
          return ServerListViewer(servers: state.servers);
        } else {
          return Container();
        }
      },
    );
  }
}
