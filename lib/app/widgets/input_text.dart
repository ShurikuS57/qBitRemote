import 'package:qBitRemote/commons/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputText extends StatefulWidget {
  InputText(
      {Key key,
      this.controller,
      this.lableText,
      this.isEnableNextFocus = false,
      this.suffixIcon,
      this.keyboardType,
      this.inputFormatters,
      this.maxLength,
      this.minLines,
      this.maxLines})
      : super(key: key);

  final TextEditingController controller;
  final String lableText;
  final bool isEnableNextFocus;
  final IconData suffixIcon;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final int maxLength;
  final int minLines;
  final int maxLines;

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      inputFormatters: widget.inputFormatters ?? [],
      maxLength: widget.maxLength,
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
          labelText: widget.lableText ?? "",
          counter: Offstage(),
          suffixIcon:
              widget.suffixIcon != null ? Icon(widget.suffixIcon) : null,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(
                  color: AppColors.inputTextFocusedBorderColor, width: 2)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide:
                  BorderSide(color: AppColors.inputTextUnfocusBorderColor))),
      onEditingComplete: widget.isEnableNextFocus
          ? () => FocusScope.of(context).nextFocus()
          : null,
    );
  }
}
