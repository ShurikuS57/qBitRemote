import 'package:flutter/material.dart';

class CheckBoxTile extends StatefulWidget {
  final bool isChecked;
  final Widget title;
  final EdgeInsetsGeometry contentPadding;
  final ValueChanged<bool> onChanged;

  CheckBoxTile(
      {required this.title,
      required this.contentPadding,
      this.isChecked = false,
      required this.onChanged});

  @override
  _CheckBoxTileState createState() => _CheckBoxTileState();
}

class _CheckBoxTileState extends State<CheckBoxTile> {
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        contentPadding: widget.contentPadding,
        title: widget.title,
        value: _isChecked,
        onChanged: (bool? newValue) {
          widget.onChanged.call(newValue ?? false);
          setState(() {
            _isChecked = newValue ?? false;
          });
        });
  }
}
