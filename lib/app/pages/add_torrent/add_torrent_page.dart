import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qBitRemote/app/widgets/action_button.dart';
import 'package:qBitRemote/app/widgets/input_text.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/routes.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'add_torrent_bloc.dart';
import 'clipboard_bloc.dart';

class AddTorrentScreen extends StatefulWidget {
  AddTorrentScreen({Key key}) : super(key: key);

  @override
  _AddTorrentScreenState createState() => _AddTorrentScreenState();
}

class _AddTorrentScreenState extends State<AddTorrentScreen> {
  final urlTextController = TextEditingController();
  final savePathTextController = TextEditingController();
  ScaffoldMessengerState scaffoldMessengerState;

  @override
  void initState() {
    super.initState();
    urlTextController.addListener(() {
      context
          .read<AddTorrentBloc>()
          .add(ChangeUrlEvent(urlTextController.text.trim()));
    });
  }

  @override
  void dispose() {
    urlTextController.dispose();
    savePathTextController.dispose();
    if (scaffoldMessengerState != null) {
      scaffoldMessengerState.hideCurrentSnackBar();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AddTorrentArg argSetup = ModalRoute.of(context).settings.arguments;
    if (argSetup != null) {
      context.read<AddTorrentBloc>().add(CheckArgEvent(argSetup));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).addTorrent),
      ),
      backgroundColor: AppColors.primaryBackground,
      body: buildBody(context, argSetup),
    );
  }

  Widget buildBody(BuildContext context, AddTorrentArg argSetup) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AddTorrentBloc, AddTorrentState>(
          listener: (context, state) {
            if (state is ShowErrorState) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.message),
              ));
            } else if (state is AddTorrentSuccessState) {
              if (Navigator.of(context).canPop()) {
                Navigator.pop(context);
              } else {
                Navigator.pushReplacementNamed(context, Routes.torrentsPage);
              }
            } else if (state is ShowDefaultSavePathState) {
              savePathTextController.text = state.path;
            } else if (state is SetDownloadUrlState) {
              urlTextController.text = state.url;
            }
          },
        ),
        BlocListener<ClipboardBloc, ClipboardState>(
          listener: (context, state) {
            if (state is ShowMagnetSnackbarState && argSetup == null) {
              scaffoldMessengerState = ScaffoldMessenger.of(context);
              scaffoldMessengerState.showSnackBar(SnackBar(
                content: Text(AppLocalizations.of(context).foundMagnetLink),
                duration: Duration(seconds: 10),
                action: SnackBarAction(
                  label: AppLocalizations.of(context).add.toUpperCase(),
                  onPressed: () {
                    context.read<AddTorrentBloc>().add(CheckArgEvent(
                        AddTorrentArg(isMagnetLink: true, uri: state.url)));
                  },
                ),
              ));
            }
          },
        )
      ],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildToggleSwitch(context),
            _buildToggleChoice(),
            SizedBox(
              height: 16,
            ),
            buildSelectedPathList(),
            SizedBox(
              height: 16,
            ),
            buildInputSavePath(context),
            buildStartDownloadButton()
          ],
        ),
      ),
    );
  }

  Widget buildStartDownloadButton() {
    return BlocBuilder<AddTorrentBloc, AddTorrentState>(
      buildWhen: (previous, current) => current is EnableDownloadButtonState,
      builder: (context, state) {
        var isEnableButton = false;
        if (state is EnableDownloadButtonState) {
          isEnableButton = state.isEnable;
        }
        return ActionButton(
            text: AppLocalizations.of(context).startDownload,
            onPressed: isEnableButton
                ? () {
                    context.read<AddTorrentBloc>().add(
                        AddTorrentEvent.startDownload(
                            savePathTextController.text));
                  }
                : null);
      },
    );
  }

  Widget buildInputSavePath(BuildContext context) {
    return InputText(
      controller: savePathTextController,
      lableText: AppLocalizations.of(context).saveToPath,
    );
  }

  Widget buildSelectedPathList() {
    return BlocBuilder<AddTorrentBloc, AddTorrentState>(
      buildWhen: (previous, current) => current is FileSelectedState,
      builder: (context, state) {
        String selectedFiles = "";
        if (state is FileSelectedState) {
          selectedFiles = state.selectedFiles;
        }
        return Text(selectedFiles);
      },
    );
  }

  Widget _buildToggleSwitch(BuildContext context) {
    return BlocBuilder<AddTorrentBloc, AddTorrentState>(
      buildWhen: (previous, current) => current is SwitchInputTypeState,
      builder: (context, state) {
        bool _isChoiceFile = true;
        if (state is SwitchInputTypeState) {
          _isChoiceFile = state.isFileSelected;
        }
        return Wrap(
          alignment: WrapAlignment.center,
          children: [
            ToggleSwitch(
              minWidth: 100.0,
              cornerRadius: 20.0,
              activeBgColor: AppColors.actionButtonBackgroundColor,
              activeFgColor: AppColors.actionButtonTextColor,
              inactiveBgColor: AppColors.actionButtonBackgroundDisableColor,
              inactiveFgColor: AppColors.actionButtonTextColor,
              labels: [
                AppLocalizations.of(context).file,
                AppLocalizations.of(context).url
              ],
              icons: [Icons.file_upload, Icons.link],
              initialLabelIndex: _isChoiceFile ? 0 : 1,
              onToggle: (index) {
                context
                    .read<AddTorrentBloc>()
                    .add(AddTorrentEvent.onSwitchInputSource(index == 0));
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildToggleChoice() {
    return BlocBuilder<AddTorrentBloc, AddTorrentState>(
      buildWhen: (previous, current) => current is SwitchInputTypeState,
      builder: (context, state) {
        bool _isChoiceFile = true;
        if (state is SwitchInputTypeState) {
          _isChoiceFile = state.isFileSelected;
        }
        return _isChoiceFile
            ? Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ActionButton(
                  text: AppLocalizations.of(context).selectedFile,
                  onPressed: () {
                    context
                        .read<AddTorrentBloc>()
                        .add(AddTorrentEvent.choiceTorrentFile());
                  },
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(top: 16),
                child: InputText(
                  controller: urlTextController,
                  lableText: AppLocalizations.of(context).marginUrl,
                  minLines: 3,
                  maxLines: 3,
                ),
              );
      },
    );
  }
}

class AddTorrentArg {
  final bool isMagnetLink;
  final String uri;

  AddTorrentArg({this.isMagnetLink, this.uri});

  AddTorrentArg copyWith({bool isMagnetLink, String uri}) => AddTorrentArg(
      isMagnetLink: isMagnetLink ?? this.isMagnetLink, uri: uri ?? this.uri);
}
