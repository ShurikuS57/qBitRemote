import 'package:qBitRemote/app/pages/server_list/server_list_cubit.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/commons/icons.dart';
import 'package:qBitRemote/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: BlocConsumer<ServerListCubit, ServerListState>(
          listener: (context, state) {
        if (state is ShowError) {
          Navigator.pushReplacementNamed(context, Routes.serverListPage);
        } else if (state is ServerConnectSuccess) {
          Navigator.pushReplacementNamed(context, Routes.torrentsPage);
        }
      }, builder: (context, snapshot) {
        if (snapshot is ServerListInitial) {
          context.watch<ServerListCubit>().checkSelectedServer();
        }
        return Stack(
          children: <Widget>[
            Center(
              child: Image(
                image: AssetImage(AppIcons.launcher),
                width: 140,
                height: 140,
              ),
            ),
          ],
        );
      }),
    );
  }
}