import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qBitRemote/app/pages/add_server/bloc/add_server_bloc.dart';
import 'package:qBitRemote/app/widgets/action_button.dart';
import 'package:qBitRemote/app/widgets/input_text.dart';
import 'package:qBitRemote/app/widgets/url_form_field.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/commons/extensions/build_context_ext.dart';
import 'package:qBitRemote/local/models/server_host.dart';

import 'bloc/add_server_event.dart';
import 'bloc/add_server_state.dart';

class AddServerPage extends StatefulWidget {
  @override
  _AddServerPageState createState() => _AddServerPageState();
}

class _AddServerPageState extends State<AddServerPage> {
  var _nameController = TextEditingController();
  var _loginController = TextEditingController();
  var _passwordController = TextEditingController();
  var _hostController = TextEditingController();
  var _hostInputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      _invalidateButton();
    });
    _loginController.addListener(() {
      _invalidateButton();
    });
    _passwordController.addListener(() {
      _invalidateButton();
    });
    _hostController.addListener(() {
      _invalidateButton();
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
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            InputText(
              controller: _nameController,
              lableText: context.intl().name,
              isEnableNextFocus: true,
              suffixIcon: Icons.title_outlined,
            ),
            Container(
              height: 8,
            ),
            UrlFormField(_hostController, _hostInputController,
                labelText: context.intl().hostname),
            Container(
              height: 8,
            ),
            InputText(
                controller: _loginController,
                lableText: context.intl().username,
                isEnableNextFocus: true,
                suffixIcon: Icons.account_circle_outlined),
            Container(
              height: 8,
            ),
            InputText(
              controller: _passwordController,
              lableText: context.intl().password,
              isEnableNextFocus: false,
              suffixIcon: Icons.lock_outline,
              obscureText: true,
              maxLines: 1,
            ),
            Container(
              height: 16,
            ),
            _buildTestConnectButton()
          ],
        ));
  }

  Widget _buildTestConnectButton() {
    return BlocConsumer<AddServerBloc, AddServerState>(
      listener: (context, state) {
        if (state is ConnectSuccessResultState) {
          Navigator.pop(context);
        } else if (state is TestConnectState) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          if (state.isConnect) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(context.intl().connectionSuccessful),
            ));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(context.intl().connectionError),
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
                text: context.intl().testConnect,
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
          _loginController.text = state.server.login;
          _passwordController.text = state.server.password;
          _hostInputController.text = state.server.host;
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
    _hostInputController.dispose();
    _loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _invalidateButton() {
    final name = _nameController.text;
    final host = _hostController.text;
    final login = _loginController.text;
    final password = _passwordController.text;
    context
        .read<AddServerBloc>()
        .add(AddServerEvent.invalidateButton(name, host, login, password));
  }

  void _checkEditMode(BuildContext context) {
    AddServerArguments? args = context.catchArgs<AddServerArguments?>();
    if (args != null && args.isEditMode) {
      context.select((AddServerBloc bloc) =>
          bloc.add(AddServerEvent.setAppBarTitle(context.intl().editServer)));
      context.select((AddServerBloc bloc) =>
          bloc.add(AddServerEvent.setEditMode(args.editId)));
    } else {
      context.select((AddServerBloc bloc) =>
          bloc.add(AddServerEvent.setAppBarTitle(context.intl().addNewServer)));
    }
  }
}

class AddServerArguments {
  final int editId;
  final bool isEditMode;

  AddServerArguments(this.editId, this.isEditMode);
}
