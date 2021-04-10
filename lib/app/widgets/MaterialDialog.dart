import 'package:flutter/material.dart';

class MaterialDialog {
  final BuildContext _context;
  String title = "";
  TextStyle titleTextStyle = TextStyle();
  String body = "";
  TextStyle bodyTextStyle = TextStyle();
  String positiveButtonText = "";
  TextStyle positiveButtonTextStyle = TextStyle();
  Function(MaterialDialog)? _positiveButtonClick;
  String negativeButtonText = "";
  TextStyle negativeButtonTextStyle = TextStyle();
  Function(MaterialDialog)? _negativeButtonClick;
  bool isAutoCloseable = true;
  bool isButtonTextCaps = true;
  Widget? bodyWidget;
  List<CheckboxEntity> checkboxList = [];

  MaterialDialog(this._context);

  void setPositiveButtonCallback(Function(MaterialDialog) callback) {
    this._positiveButtonClick = callback;
  }

  void setNegativeButtonCallback(Function(MaterialDialog) callback) {
    this._negativeButtonClick = callback;
  }

  Widget _buildPositiveButton() {
    if (positiveButtonText.isNotEmpty) {
      return TextButton(
        child: Text(
            isButtonTextCaps
                ? positiveButtonText.toUpperCase()
                : positiveButtonText,
            style: positiveButtonTextStyle),
        onPressed: () {
          _positiveButtonClick?.call(this);
          if (this.isAutoCloseable) {
            dispose();
          }
        },
      );
    } else {
      return SizedBox();
    }
  }

  Widget _buildNegativeButton() {
    if (negativeButtonText.isNotEmpty) {
      return TextButton(
        child: Text(
            isButtonTextCaps
                ? negativeButtonText.toUpperCase()
                : negativeButtonText,
            style: negativeButtonTextStyle),
        onPressed: () {
          _negativeButtonClick?.call(this);
          if (this.isAutoCloseable) {
            dispose();
          }
        },
      );
    } else {
      return SizedBox();
    }
  }

  Widget _buildBodyWidget() {
    final body = bodyWidget;
    if (body != null) {
      return body;
    } else {
      return SizedBox();
    }
  }

  Widget _buildCheckboxList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: checkboxList.length,
      itemBuilder: (BuildContext ctxt, int index) {
        final item = checkboxList[index];
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return CheckboxListTile(
              value: item.isChecked,
              title: item.title,
              contentPadding: EdgeInsets.zero,
              onChanged: (newValue) {
                setState(() {
                  item.isChecked = newValue ?? false;
                });
              });
        });
      },
    );
  }

  void dispose() {
    Navigator.of(this._context).pop();
  }

  void show() {
    showDialog(
      context: _context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title, style: titleTextStyle),
          content: Container(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text(body, style: bodyTextStyle),
                  _buildBodyWidget(),
                  _buildCheckboxList()
                ],
              ),
            ),
          ),
          actions: [
            _buildNegativeButton(),
            _buildPositiveButton(),
          ],
        );
      },
    );
  }
}

class CheckboxEntity {
  String id;
  Text title;
  bool isChecked;
  bool isEnable;

  CheckboxEntity(
      {required this.id,
      required this.title,
      this.isChecked = false,
      this.isEnable = true});
}
