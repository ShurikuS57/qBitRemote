import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qBitRemote/app/pages/app_settings/local/bloc/app_prefs_bloc.dart';
import 'package:qBitRemote/app/theme/switch_cubit.dart';
import 'package:qBitRemote/app/widgets/checkbox/check_box_tile.dart';
import 'package:qBitRemote/app/widgets/input_text.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/commons/extensions/build_context_ext.dart';
import 'package:qBitRemote/local/models/app_prefs.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'bloc/app_prefs_events.dart';
import 'bloc/app_prefs_state.dart';

class AppPrefsPage extends StatefulWidget {
  @override
  _AppPrefsPageState createState() => _AppPrefsPageState();
}

class _AppPrefsPageState extends State<AppPrefsPage> {
  final _timeoutTextController = TextEditingController();
  bool _isSequentialDownload = false;
  bool _isDownloadFirst = false;

  @override
  void initState() {
    super.initState();
    _timeoutTextController.addListener(() {
      _savePrefs();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.intl().appPrefs),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        _buildAppSettingsCard(context),
      ],
    );
  }

  Widget _buildAppSettingsCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            BlocBuilder<AppPrefsBloc, AppPrefsState>(builder: (context, state) {
          if (state is ShowSettingsData) {
            _isSequentialDownload = state.prefs.sequentialDownload;
            _isDownloadFirst = state.prefs.downloadFirst;
            _timeoutTextController.text = state.prefs.timeoutUpdate.toString();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  context.intl().applicationSettings,
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(context.intl().timeoutUpdate,
                    style: Theme.of(context).textTheme.caption),
                SizedBox(
                  height: 8,
                ),
                InputText(
                  keyboardType: TextInputType.number,
                  suffixIcon: Icons.update_outlined,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  controller: _timeoutTextController,
                  maxLength: 3,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(context.intl().defaultSettings,
                    style: Theme.of(context).textTheme.headline3),
                CheckBoxTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  title: Text(context.intl().sequentialDownload,
                      style: Theme.of(context).textTheme.bodyText1),
                  isChecked: _isSequentialDownload,
                  onChanged: (newValue) {
                    _isSequentialDownload = newValue;
                    _savePrefs();
                  },
                ),
                CheckBoxTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  title: Text(context.intl().downloadFirst,
                      style: Theme.of(context).textTheme.bodyText1),
                  isChecked: _isDownloadFirst,
                  onChanged: (newValue) {
                    _isDownloadFirst = newValue;
                    _savePrefs();
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                Text(context.intl().theme,
                    style: Theme.of(context).textTheme.headline3),
                SizedBox(
                  height: 8,
                ),
                BlocBuilder<SwitchThemeCubit, SwitchThemeState>(
                  builder: (context, state) {
                    return Center(
                      child: ToggleSwitch(
                        minWidth: 100.0,
                        cornerRadius: 20.0,
                        activeBgColor: [AppColors.actionButtonBackgroundColor],
                        activeFgColor: AppColors.actionButtonTextColor,
                        inactiveBgColor:
                            AppColors.actionButtonBackgroundDisableColor,
                        inactiveFgColor: AppColors.actionButtonTextColor,
                        labels: [
                          context.intl().system,
                          context.intl().dark,
                          context.intl().light
                        ],
                        initialLabelIndex: state.currentIndex,
                        onToggle: (index) {
                          context.read<SwitchThemeCubit>().saveTheme(index);
                        },
                        totalSwitches: 3,
                      ),
                    );
                  },
                ),
              ],
            );
          } else {
            return SizedBox();
          }
        }),
      ),
    );
  }

  void _savePrefs() {
    context
        .read<AppPrefsBloc>()
        .add(AppPrefsEvent.saveAppPref(_createPrefsObject()));
  }

  AppPrefs _createPrefsObject() {
    return AppPrefs(
      timeoutUpdate: int.tryParse(_timeoutTextController.value.text) ?? 3,
      downloadFirst: _isDownloadFirst,
      sequentialDownload: _isSequentialDownload,
    );
  }
}
