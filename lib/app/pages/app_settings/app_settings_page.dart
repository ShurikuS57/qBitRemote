import 'package:qBitRemote/app/pages/app_settings/app_settings_cubit.dart';
import 'package:qBitRemote/app/utils/format_helper.dart';
import 'package:qBitRemote/app/widgets/action_button.dart';
import 'package:qBitRemote/app/widgets/custom_track_shape.dart';
import 'package:qBitRemote/app/widgets/input_text.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/local/models/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../routes.dart';

class AppSettingsScreen extends StatefulWidget {
  @override
  _AppSettingsScreenState createState() => _AppSettingsScreenState();
}

class _AppSettingsScreenState extends State<AppSettingsScreen> {
  final _timeoutTextController = TextEditingController();

  bool _isSaveButtonEnable = false;
  double _currentDownloadSliderValue = 0;
  double _currentUploadSliderValue = 0;

  @override
  void initState() {
    super.initState();
    _timeoutTextController.addListener(() {
      _onChangeInput();
    });
  }

  void _onChangeInput() {
    context.bloc<AppSettingsCubit>().invalidate(_createSettinsObject());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).settings),
      ),
      backgroundColor: AppColors.primaryBackground,
      body: BlocConsumer<AppSettingsCubit, AppSettingsState>(
        listener: (context, state) {
          if (state is ShowError) {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text(state.error),
            ));
          } else if (state is SaveSettingsSuccess) {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text(AppLocalizations.of(context).savedSuccessfully),
            ));
          }
        },
        builder: (context, state) {
          if (state is SetupSettingUI) {
            _timeoutTextController.text =
                state.settings.timeoutUpdate.toString();
            _currentDownloadSliderValue =
                state.settings.downloadSpeed.toDouble();
            _currentUploadSliderValue = state.settings.uploadSpeed.toDouble();
          } else if (state is InvalidateResult) {
            _isSaveButtonEnable = state.isEnable;
          }
          return ListView(
            padding: const EdgeInsets.all(8.0),
            children: [
              buildActionButton(context),
              SizedBox(
                height: 16,
              ),
              buildAppSettingsCard(),
              SizedBox(
                height: 8,
              ),
              buildQBitSettingsCard(context),
              SizedBox(
                height: 20,
              ),
              ActionButton(
                  text: "Save",
                  isTextUpperCase: true,
                  onPressed: !_isSaveButtonEnable
                      ? null
                      : () {
                          context
                              .bloc<AppSettingsCubit>()
                              .saveNewSettings(_createSettinsObject());
                        }),
            ],
          );
        },
      ),
    );
  }

  Card buildQBitSettingsCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context).qBittorentSettings,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: AppColors.textTitle1Color),
            ),
            SizedBox(
              height: 8,
            ),
            Text(AppLocalizations.of(context).globalDownloadSpeed,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.textSubtitle1Color)),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: SliderTheme(
                    data: SliderThemeData(trackShape: CustomTrackShape()),
                    child: Slider(
                      value: _currentDownloadSliderValue,
                      min: 0,
                      max: 10240000,
                      divisions: 1000,
                      label: _formatSpeedLimit(_currentDownloadSliderValue),
                      onChanged: (double value) {
                        setState(() {
                          _currentDownloadSliderValue = value;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: SizedBox(
                    width: 60,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        _formatSpeedLimit(_currentDownloadSliderValue),
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(AppLocalizations.of(context).globalUploadSpeed,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.textSubtitle1Color)),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SliderTheme(
                    data: SliderThemeData(trackShape: CustomTrackShape()),
                    child: Slider(
                      value: _currentUploadSliderValue,
                      min: 0,
                      max: 10240000,
                      divisions: 1000,
                      label: _formatSpeedLimit(_currentUploadSliderValue),
                      onChanged: (double value) {
                        setState(() {
                          _currentUploadSliderValue = value;
                        });
                        context
                            .bloc<AppSettingsCubit>()
                            .invalidate(_createSettinsObject());
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: SizedBox(
                    width: 60,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        _formatSpeedLimit(_currentUploadSliderValue),
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card buildAppSettingsCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context).applicationSettings,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: AppColors.textTitle1Color),
            ),
            SizedBox(
              height: 8,
            ),
            Text(AppLocalizations.of(context).timeoutUpdate,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.textTitle1Color)),
            InputText(
              keyboardType: TextInputType.number,
              suffixIcon: Icons.update_outlined,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: _timeoutTextController,
              maxLength: 4,
            ),
          ],
        ),
      ),
    );
  }

  ActionButton buildActionButton(BuildContext context) {
    return ActionButton(
      text: AppLocalizations.of(context).serverList,
      isTextUpperCase: true,
      iconData: Icons.list_outlined,
      onPressed: () {
        Navigator.pushNamed(context, Routes.serverListPage);
      },
    );
  }

  String _formatSpeedLimit(double limit) {
    final limitRound = limit.round();
    if (limitRound > 0) {
      return FormatHelper.formatBytes(limitRound, 1);
    } else {
      return "∞";
    }
  }

  AppSettings _createSettinsObject() {
    final settings = AppSettings(
        timeoutUpdate: int.tryParse(_timeoutTextController.text) ?? 3);
    settings.downloadSpeed = _currentDownloadSliderValue.toInt();
    settings.uploadSpeed = _currentUploadSliderValue.toInt();
    return settings;
  }
}
