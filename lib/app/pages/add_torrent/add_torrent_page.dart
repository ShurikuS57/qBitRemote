import 'package:qBitRemote/app/pages/add_torrent/add_torrent_cubit.dart';
import 'package:qBitRemote/app/widgets/action_button.dart';
import 'package:qBitRemote/app/widgets/input_text.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddTorrentScreen extends StatefulWidget {
  AddTorrentScreen({Key key}) : super(key: key);

  @override
  _AddTorrentScreenState createState() => _AddTorrentScreenState();
}

class _AddTorrentScreenState extends State<AddTorrentScreen> {
  final urlTextController = TextEditingController();
  final savePathTextController = TextEditingController();

  bool _isChoiceFile = true;
  String _fileSelectedPath = "";
  bool _isSendButtonEnable = false;

  @override
  void dispose() {
    urlTextController.dispose();
    savePathTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    urlTextController.addListener(() {
      context
          .read<AddTorrentCubit>()
          .onChangeUrl(urlTextController.text.trim());
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).addTorrent),
      ),
      backgroundColor: AppColors.primaryBackground,
      body: BlocConsumer<AddTorrentCubit, AddTorrentState>(
          listener: (context, state) {
        if (state is ShowError) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.message),
          ));
        }
        if (state is AddTorrentSuccess) {
          Navigator.pop(context);
        }
      }, builder: (context, state) {
        if (state is OnSwitchInputSource) {
          _isChoiceFile = state.isFile;
          _isSendButtonEnable = state.sendButtonEnable;
          if (!state.isFile) {
            _fileSelectedPath = "";
          }
        } else if (state is FileSelected) {
          String fileNames = "";
          state.pathFile.forEach((element) {
            fileNames += element.name + "\n";
          });
          _fileSelectedPath = fileNames;
          _isSendButtonEnable = state.sendButtonEnable;
        } else if (state is SendButtonEnable) {
          _isSendButtonEnable = state.isEnable;
        } else if (state is ShowDefaultSavePath) {
          savePathTextController.text = state.path;
        }
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  ToggleSwitch(
                    minWidth: 100.0,
                    cornerRadius: 20.0,
                    activeBgColor: AppColors.actionButtonBackgroundColor,
                    activeFgColor: AppColors.actionButtonTextColor,
                    inactiveBgColor:
                        AppColors.actionButtonBackgroundDisableColor,
                    inactiveFgColor: AppColors.actionButtonTextColor,
                    labels: [
                      AppLocalizations.of(context).file,
                      AppLocalizations.of(context).url
                    ],
                    icons: [Icons.file_upload, Icons.link],
                    initialLabelIndex: _isChoiceFile ? 0 : 1,
                    onToggle: (index) {
                      context
                          .read<AddTorrentCubit>()
                          .onSwitchInputSource(index == 0);
                    },
                  ),
                ],
              ),
              _isChoiceFile
                  ? Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: ActionButton(
                        text: AppLocalizations.of(context).selectedFile,
                        onPressed: () {
                          context.read<AddTorrentCubit>().choiceTorrentFile();
                        },
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: InputText(
                        controller: urlTextController,
                        lableText: AppLocalizations.of(context).marginUrl,
                        minLines: 4,
                        maxLines: 4,
                      ),
                    ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(_fileSelectedPath),
              ),
              InputText(
                controller: savePathTextController,
                lableText: AppLocalizations.of(context).saveToPath,
              ),
              ActionButton(
                  text: AppLocalizations.of(context).startDownload,
                  onPressed: _isSendButtonEnable
                      ? () {
                          context.read<AddTorrentCubit>().startDownload(
                              savePathTextController.text.trim());
                        }
                      : null)
            ],
          ),
        );
      }),
    );
  }
}
