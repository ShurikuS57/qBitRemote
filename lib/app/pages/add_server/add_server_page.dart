import 'package:qBitRemote/app/pages/add_server/add_server_cubit.dart';
import 'package:qBitRemote/app/widgets/action_button.dart';
import 'package:qBitRemote/app/widgets/input_text.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddServerPage extends StatefulWidget {
  @override
  _AddServerPageState createState() => _AddServerPageState();
}

class _AddServerPageState extends State<AddServerPage> {
  var _nameController = TextEditingController();
  var _hostController = TextEditingController();
  var _loginController = TextEditingController();
  var _passwordController = TextEditingController();

  var _isSaveButtonEnable = false;
  var _titleAppBar = "";

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
    _checkEditMode(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleAppBar),
        actions: [
          BlocConsumer<AddServerCubit, AddServerState>(
            listener: (context, state) {
              if (state is AddServerSuccessful) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              if (state is ButtonInvalidate) {
                _isSaveButtonEnable = state.isEnableButton;
              }
              return IconButton(
                icon: Icon(Icons.save),
                onPressed: !_isSaveButtonEnable
                    ? null
                    : () {
                        final serverHost = ServerHost(
                            name: _nameController.text,
                            host: _hostController.text,
                            login: _loginController.text,
                            password: _passwordController.text);
                        context.bloc<AddServerCubit>().saveServer(serverHost);
                      },
              );
            },
          )
        ],
      ),
      backgroundColor: AppColors.primaryBackground,
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocConsumer<AddServerCubit, AddServerState>(
            listener: (context, state) {
              if (state is TestConnectResult) {
                if (state.isHaveConnect) {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content:
                        Text(AppLocalizations.of(context).connectionSuccessful),
                  ));
                } else {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text(AppLocalizations.of(context).connectionError),
                  ));
                }
              }
            },
            buildWhen: (previous, current) {
              return current is AddServerSetupEditMode;
            },
            builder: (context, state) {
              if (state is AddServerSetupEditMode) {
                _nameController.text = state.server.name;
                _hostController.text = state.server.host;
                _loginController.text = state.server.login;
                _passwordController.text = state.server.password;
              }
              return ListView(
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
                      suffixIcon: Icons.lock_outline),
                  Container(
                    height: 16,
                  ),
                  BlocBuilder<AddServerCubit, AddServerState>(
                    builder: (context, state) {
                      if (state is ButtonInvalidate) {
                        _isSaveButtonEnable = state.isEnableButton;
                      }
                      return Center(
                        child: Wrap(
                          children: [
                            ActionButton(
                              text: AppLocalizations.of(context).testConnect,
                              isTextUpperCase: true,
                              onPressed: !_isSaveButtonEnable
                                  ? null
                                  : () {
                                      final serverHost = ServerHost(
                                          name: _nameController.text,
                                          host: _hostController.text,
                                          login: _loginController.text,
                                          password: _passwordController.text);
                                      context
                                          .bloc<AddServerCubit>()
                                          .checkServerConnect(serverHost);
                                    },
                            ),
                          ],
                        ),
                      );
                    },
                  )
                ],
              );
            },
          )),
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
        .bloc<AddServerCubit>()
        .invalidateButton(name, host, login, password);
  }

  void _checkEditMode(BuildContext context) {
    final AddServerArguments args = ModalRoute.of(context).settings.arguments;
    if (args != null && args.isEditMode) {
      _titleAppBar = AppLocalizations.of(context).editServer;
      context.bloc<AddServerCubit>().setupEditMode(args.editId);
    } else {
      _titleAppBar = AppLocalizations.of(context).addNewServer;
    }
  }
}

class AddServerArguments {
  final int editId;
  final bool isEditMode;

  AddServerArguments(this.editId, this.isEditMode);
}
