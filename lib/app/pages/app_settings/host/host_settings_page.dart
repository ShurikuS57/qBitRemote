import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qBitRemote/app/widgets/loader_layout.dart';
import 'package:qBitRemote/app/widgets/slider/speed_slider.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/commons/extensions/build_context_ext.dart';
import 'package:qBitRemote/local/models/server_preferences.dart';
import 'bloc/host_settings_state.dart';
import 'bloc/host_settings_event.dart';
import 'bloc/host_settings_bloc.dart';

class HostSettingPage extends StatefulWidget {
  @override
  _HostSettingPageState createState() => _HostSettingPageState();
}

class _HostSettingPageState extends State<HostSettingPage> {
  double _currentDownloadSliderValue = 0;
  double _currentUploadSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.intl().serverPrefs),
      ),
      backgroundColor: AppColors.primaryBackground,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocConsumer<HostSettingsBloc, HostSettingsState>(
        listener: (context, state) {
          if (state is ShowToastState) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.msg),
            ));
          }
        },
        builder: (context, state) {
          if (state is ShowErrorState) {
            return Text(state.msg);
          } else if (state is ShowPreferencesState) {
            _currentDownloadSliderValue = state.prefs.downloadSpeed.toDouble();
            _currentUploadSliderValue = state.prefs.uploadSpeed.toDouble();
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      context.intl().qBittorentSettings,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: AppColors.textTitle1Color),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(context.intl().globalDownloadSpeed,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColors.textSubtitle1Color)),
                    SizedBox(
                      height: 8,
                    ),
                    SpeedSlider(
                      value: _currentDownloadSliderValue,
                      min: 0,
                      max: 10240000,
                      divisions: 1000,
                      onChangeEnd: (double newValue) => {
                        _currentDownloadSliderValue = newValue,
                        context
                            .read<HostSettingsBloc>()
                            .add(SavePrefEvent(_createSettingsObject()))
                      },
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(context.intl().globalUploadSpeed,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColors.textSubtitle1Color)),
                    SizedBox(
                      height: 8,
                    ),
                    SpeedSlider(
                      value: _currentUploadSliderValue,
                      min: 0,
                      max: 10240000,
                      divisions: 1000,
                      onChangeEnd: (double newValue) => {
                        _currentUploadSliderValue = newValue,
                        context
                            .read<HostSettingsBloc>()
                            .add(SavePrefEvent(_createSettingsObject()))
                      },
                    )
                  ],
                ),
              ),
            );
          } else {
            return LoaderLayout();
          }
        },
      ),
    );
  }

  ServerPreferences _createSettingsObject() {
    return ServerPreferences(
        downloadSpeed: _currentDownloadSliderValue.toInt(),
        uploadSpeed: _currentUploadSliderValue.toInt());
  }
}
