import 'package:qBitRemote/app/pages/server_list/server_list_cubit.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/routes.dart';
import 'package:flutter/material.dart';
import 'widgets/server_list_empty.dart';
import 'widgets/server_list_viewer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ServerListPage extends StatefulWidget {
  @override
  _ServerListPageState createState() => _ServerListPageState();
}

class _ServerListPageState extends State<ServerListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).serverList),
      ),
      backgroundColor: AppColors.primaryBackground,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, Routes.addServerPage);
          }),
      body: Center(
        child: _ServerListView(),
      ),
    );
  }
}

class _ServerListView extends StatelessWidget {
  const _ServerListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ServerListCubit, ServerListState>(
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
        }
      },
      builder: (context, state) {
        if (state is ServerListInitial) {
          context.watch<ServerListCubit>().loadServerList();
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