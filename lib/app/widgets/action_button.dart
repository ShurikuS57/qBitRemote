import 'package:flutter/material.dart';
import 'package:qBitRemote/commons/colors.dart';

class ActionButton extends StatefulWidget {
  const ActionButton(
      {Key? key,
      required this.text,
      this.isTextUpperCase = false,
      required this.onPressed,
      this.iconData})
      : super(key: key);

  final String text;
  final bool isTextUpperCase;
  final Function()? onPressed;
  final IconData? iconData;

  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.iconData != null
                    ? Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Icon(widget.iconData),
                      )
                    : SizedBox(),
                Text(
                  widget.isTextUpperCase
                      ? widget.text.toUpperCase()
                      : widget.text,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5),
                ),
              ],
            ),
          ),
          color: AppColors.actionButtonBackgroundColor,
          disabledColor: AppColors.actionButtonBackgroundDisableColor,
          textColor: AppColors.actionButtonTextColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          onPressed: widget.onPressed,
        ),
      ],
    );
  }
}
