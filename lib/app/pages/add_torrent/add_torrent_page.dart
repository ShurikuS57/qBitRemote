import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qBitRemote/app/widgets/action_button.dart';
import 'package:qBitRemote/app/widgets/input_text.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/commons/extensions/build_context_ext.dart';
import 'package:qBitRemote/routes.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'add_torrent_bloc.dart';
import 'clipboard_bloc.dart';

class AddTorrentScreen extends StatefulWidget {
  AddTorrentScreen({Key? key}) : super(key: key);

  @override
  _AddTorrentScreenState createState() => _AddTorrentScreenState();
}

class _AddTorrentScreenState extends State<AddTorrentScreen> {
  final urlTextController = TextEditingController();
  final savePathTextController = TextEditingController();
  bool _isSequentialDownload = false;
  bool _isDownloadFirst = false;
  ScaffoldMessengerState? scaffoldMessengerState;

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
      scaffoldMessengerState?.hideCurrentSnackBar();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AddTorrentArg? argSetup = context.catchArgs();

    if (argSetup != null) {
      context.read<AddTorrentBloc>().add(CheckArgEvent(argSetup));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(context.intl().addTorrent),
        actions: [buildStartDownloadButton()],
      ),
      backgroundColor: AppColors.primaryBackground,
      body: buildBody(context, argSetup),
    );
  }

  Widget buildBody(BuildContext context, AddTorrentArg? argSetup) {
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
            } else if (state is ShowPrefOptionsState) {
              savePathTextController.text = state.options.savePath;
            } else if (state is SetDownloadUrlState) {
              urlTextController.text = state.url;
            }
          },
        ),
        BlocListener<ClipboardBloc, ClipboardState>(
          listener: (context, state) {
            if (state is ShowMagnetSnackbarState && argSetup == null) {
              scaffoldMessengerState = ScaffoldMessenger.of(context);
              scaffoldMessengerState?.showSnackBar(SnackBar(
                content: Text(context.intl().foundMagnetLink),
                duration: Duration(seconds: 10),
                action: SnackBarAction(
                  label: context.intl().add.toUpperCase(),
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
      child: ListView(
        padding: const EdgeInsets.all(16.0),
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
          BlocBuilder<AddTorrentBloc, AddTorrentState>(
            // buildWhen: (previous, current) => current is ShowPrefOptionsState,
            builder: (context, state) {
              if (state is ShowPrefOptionsState) {
                _isSequentialDownload = state.options.isSequentialDownload;
                _isDownloadFirst = state.options.isDownloadFirst;
              }
              return ExpansionTile(
                title: Text(context.intl().options),
                initiallyExpanded: true,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  buildInputSavePath(context),
                  CheckboxListTile(
                    title: Text(context.intl().sequentialDownload),
                    value: _isSequentialDownload,
                    onChanged: (bool? value) {
                      _isSequentialDownload = value ?? false;
                      context
                          .read<AddTorrentBloc>()
                          .add(UpdateOptionsEvent(_prepareOptions()));
                    },
                  ),
                  CheckboxListTile(
                    title: Text(context.intl().downloadFirst),
                    value: _isDownloadFirst,
                    onChanged: (bool? value) {
                      _isDownloadFirst = value ?? false;
                      context
                          .read<AddTorrentBloc>()
                          .add(UpdateOptionsEvent(_prepareOptions()));
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              );
            },
          ),
          SizedBox(
            height: 8,
          ),
        ],
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
        return IconButton(
            icon: Icon(Icons.download_outlined),
            onPressed: isEnableButton
                ? () {
              context
                  .read<AddTorrentBloc>()
                  .add(AddTorrentEvent.startDownload(_prepareOptions()));
            }
                : null);
      },
    );
  }

  Widget buildInputSavePath(BuildContext context) {
    return InputText(
      controller: savePathTextController,
      lableText: context.intl().saveToPath,
    );
  }

  Widget buildSelectedPathList() {
    return BlocBuilder<AddTorrentBloc, AddTorrentState>(
      buildWhen: (previous, current) => current is FileSelectedState,
      builder: (context, state) {
        List<String> selectedFiles = [];
        if (state is FileSelectedState) {
          selectedFiles = state.selectedFiles;
        }
        return ListView.builder(
            shrinkWrap: true,
            itemCount: selectedFiles.length,
            itemBuilder: (context, index) => Row(
                  children: [
                    Text(
                      selectedFiles[index],
                      style: TextStyle(
                          fontSize: 16, color: AppColors.textTitle1Color),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.cancel_rounded,
                        color: AppColors.textSubtitle1Color,
                      ),
                      onPressed: () {
                        context
                            .read<AddTorrentBloc>()
                            .add(RemoveTorrentFile(selectedFiles[index]));
                      },
                    )
                  ],
                ));
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
              labels: [context.intl().file, context.intl().url],
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
            text: context.intl().selectedFile,
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
            lableText: context.intl().marginUrl,
            minLines: 3,
            maxLines: 3,
          ),
        );
      },
    );
  }

  PrefOptions _prepareOptions() {
    return PrefOptions(
        savePath: savePathTextController.text,
        isDownloadFirst: _isDownloadFirst,
        isSequentialDownload: _isSequentialDownload);
  }
}

class AddTorrentArg {
  final bool isMagnetLink;
  final String uri;

  AddTorrentArg({required this.isMagnetLink, required this.uri});

  AddTorrentArg copyWith({bool? isMagnetLink, String? uri}) => AddTorrentArg(
      isMagnetLink: isMagnetLink ?? this.isMagnetLink, uri: uri ?? this.uri);
}
