import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qBitRemote/app/pages/add_server/add_server_bloc.dart';
import 'package:qBitRemote/app/widgets/action_button.dart';
import 'package:qBitRemote/app/widgets/input_text.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/local/models/server_host.dart';

class AddServerPage extends StatefulWidget {
  @override
  _AddServerPageState createState() => _AddServerPageState();
}

class _AddServerPageState extends State<AddServerPage> {
  var _nameController = TextEditingController();
  var _hostController = TextEditingController();
  var _loginController = TextEditingController();
  var _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      _invalidateButton(context);
    });
    _hostController.addListener(() {
      _invalidateButton(context);
    });
    _loginController.addListener(() {
      _invalidateButton(context);
    });
    _passwordController.addListener(() {
      _invalidateButton(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildAppBarTitle(),
        actions: [_buildSaveButton()],
      ),
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              InputText(
                controller: _nameController,
                lableText: AppLocalizations.of(context).name,
                isEnableNextFocus: true,
                suffixIcon: Icons.title_outlined,
              ),
              Container(
                height: 8,
              ),
              InputText(
                controller: _hostController,
                lableText: AppLocalizations.of(context).hostname,
                isEnableNextFocus: true,
                suffixIcon: Icons.http_outlined,
              ),
              Container(
                height: 8,
              ),
              InputText(
                  controller: _loginController,
                  lableText: AppLocalizations.of(context).username,
                  isEnableNextFocus: true,
                  suffixIcon: Icons.account_circle_outlined),
              Container(
                height: 8,
              ),
              InputText(
                  controller: _passwordController,
                  lableText: AppLocalizations.of(context).password,
                  isEnableNextFocus: false,
                  suffixIcon: Icons.lock_outline,
              obscureText: true,
              maxLines: 1,),
              Container(
                height: 16,
              ),
              _buildTestConnectButton()
            ],
          )),
    );
  }

  Widget _buildTestConnectButton() {
    return BlocConsumer<AddServerBloc, AddServerState>(
      listener: (context, state) {
        if (state is ConnectSuccessResultState) {
          Navigator.pop(context);
        }
        if (state is TestConnectState) {
          if (state.isConnect) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(AppLocalizations.of(context).connectionSuccessful),
            ));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(AppLocalizations.of(context).connectionError),
            ));
          }
        }
      },
      builder: (context, state) {
        bool isSaveButtonEnable = false;
        if (state is ButtoinEnableState) {
          isSaveButtonEnable = state.isEnable;
        } else if (state is TestConnectState) {
          isSaveButtonEnable = true;
        }
        return Center(
          child: Wrap(
            children: [
              ActionButton(
                text: AppLocalizations.of(context).testConnect,
                isTextUpperCase: true,
                onPressed: !isSaveButtonEnable
                    ? null
                    : () {
                        final serverHost = ServerHost(
                            name: _nameController.text,
                            host: _hostController.text,
                            login: _loginController.text,
                            password: _passwordController.text);
                        context
                            .read<AddServerBloc>()
                            .add(CheckConnectEvent(serverHost));
                      },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSaveButton() {
    return BlocConsumer<AddServerBloc, AddServerState>(
      listener: (context, state) {
        if (state is SetupEditModeState) {
          _nameController.text = state.server.name;
          _hostController.text = state.server.host;
          _loginController.text = state.server.login;
          _passwordController.text = state.server.password;
        }
      },
      builder: (context, state) {
        bool isSaveButtonEnable = false;
        if (state is ButtoinEnableState) {
          isSaveButtonEnable = state.isEnable;
        } else if (state is TestConnectState) {
          isSaveButtonEnable = true;
        }
        if (state is InitialAddServerState) {
          _checkEditMode(context);
        }
        return IconButton(
          icon: Icon(Icons.save),
          onPressed: !isSaveButtonEnable
              ? null
              : () {
                  final serverHost = ServerHost(
                      name: _nameController.text.trim(),
                      host: _hostController.text.trim(),
                      login: _loginController.text.trim(),
                      password: _passwordController.text.trim());
                  context
                      .read<AddServerBloc>()
                      .add(SaveServerEvent(serverHost));
                  // context.read<AddServerCubit>().saveServer(serverHost);
                },
        );
      },
    );
  }

  Widget _buildAppBarTitle() {
    return BlocBuilder<AddServerBloc, AddServerState>(
      buildWhen: (previous, current) => current is AppBarTitleState,
      builder: (context, state) {
        String title = "";
        if (state is AppBarTitleState) {
          title = state.title;
        }
        return Text(title);
      },
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _hostController.dispose();
    _loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _invalidateButton(BuildContext context) {
    final name = _nameController.text;
    final host = _hostController.text;
    final login = _loginController.text;
    final password = _passwordController.text;
    context
        .read<AddServerBloc>()
        .add(AddServerEvent.invalidateButton(name, host, login, password));
  }

  void _checkEditMode(BuildContext context) {
    final AddServerArguments args = ModalRoute.of(context).settings.arguments;
    if (args != null && args.isEditMode) {
      context.select((AddServerBloc bloc) => bloc.add(
          AddServerEvent.setAppBarTitle(
              AppLocalizations.of(context).editServer)));
      context.select((AddServerBloc bloc) =>
          bloc.add(AddServerEvent.setEditMode(args.editId)));
    } else {
      context.select((AddServerBloc bloc) => bloc.add(
          AddServerEvent.setAppBarTitle(
              AppLocalizations.of(context).addNewServer)));
    }
  }
}

class AddServerArguments {
  final int editId;
  final bool isEditMode;

  AddServerArguments(this.editId, this.isEditMode);
}
