import 'package:flutter/material.dart';
import 'package:qBitRemote/app/utils/format_helper.dart';
import 'package:qBitRemote/app/widgets/custom_track_shape.dart';

class SpeedSlider extends StatefulWidget {
  final double min;
  final double max;
  final int divisions;
  final double value;
  final ValueChanged<double>? onChanged;
  final ValueChanged<double>? onChangeEnd;

  SpeedSlider(
      {this.min = 0,
      this.max = 100,
      this.divisions = 1,
      this.value = 0,
      this.onChanged,
      this.onChangeEnd});

  @override
  _SpeedSliderState createState() => _SpeedSliderState();
}

class _SpeedSliderState extends State<SpeedSlider> {
  double _value = 0;
  bool _isStartChanged = false;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    if (!_isStartChanged) {
      _value = widget.value;
    }
    return Row(
      children: [
        Expanded(
          child: SliderTheme(
            data: SliderThemeData(trackShape: CustomTrackShape()),
            child: Slider(
              min: widget.min,
              max: widget.max,
              divisions: widget.divisions,
              value: _value,
              label: _formatSpeedLimit(_value),
              onChangeEnd: (value) {
                _isStartChanged = false;
                widget.onChangeEnd?.call(value);
              },
              onChanged: (newValue) {
                setState(() {
                  _value = newValue;
                });
              },
              onChangeStart: (value) {
                _isStartChanged = true;
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
                _formatSpeedLimit(_value),
                textAlign: TextAlign.end,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
            ),
          ),
        ),
      ],
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
}
