import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/commons/extensions/theme_ext.dart';

class UrlFormField extends StatefulWidget {
  final String labelText;
  final InputDecoration decoration;
  final bool showIcon;
  final TextEditingController controller;
  final TextEditingController onHostInputController;

  UrlFormField(this.controller, this.onHostInputController,
      {Key? key,
      this.labelText = "",
      this.decoration = const InputDecoration(),
      this.showIcon = true})
      : super(key: key);

  @override
  _UrlFormFieldState createState() => _UrlFormFieldState();
}

class _UrlFormFieldState extends State<UrlFormField> {
  var _addressController = TextEditingController();
  var _portController = TextEditingController();
  final List<String> _prefixUrls = ["http://", "https://"];
  String selectPrefixUrl = "";

  @override
  void initState() {
    super.initState();
    selectPrefixUrl = _prefixUrls.first;
    _addressController.addListener(() {
      _prepareUrl();
    });
    _portController.addListener(() {
      _prepareUrl();
    });
    widget.onHostInputController.addListener(() {
      _parseHostUrl();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: TextFormField(
        maxLines: 1,
        controller: _addressController,
        onEditingComplete: () => FocusScope.of(context).nextFocus(),
        style: context.textTheme().bodyText1,
        decoration: InputDecoration(
            labelText: widget.labelText,
            isDense: true,
            counter: Offstage(),
            prefix: buildPrefixUrlsMenu(),
            suffix: buildPortInput(),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(
                    color: AppColors.inputTextFocusedBorderColor, width: 2)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide:
                    BorderSide(color: AppColors.inputTextUnfocusBorderColor))),
      ),
    );
  }

  Widget buildPortInput() {
    return SizedBox(
        width: widget.showIcon ? 86 : 54,
        child: Stack(
          children: [
            TextFormField(
              controller: _portController,
              keyboardType: TextInputType.number,
              maxLines: 1,
              maxLength: 5,
              onEditingComplete: () => FocusScope.of(context).nextFocus(),
              style: context.textTheme().bodyText1,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
              decoration: InputDecoration(
                prefix: Text(": ", style: context.textTheme().bodyText1,),
                hintText: "8080",
                hintStyle: context.theme().popupMenuTheme.textStyle,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                counter: Offstage(),
              ),
            ),
            widget.showIcon
                ? Align(
                    alignment: Alignment.centerRight,
                    heightFactor: 2,
                    child: Icon(Icons.http_outlined, color: Theme.of(context).inputDecorationTheme.enabledBorder?.borderSide.color,))
                : SizedBox()
          ],
        ));
  }

  Widget buildPrefixUrlsMenu() {
    return DropdownButton(
      dropdownColor: Theme.of(context).popupMenuTheme.color,
        value: selectPrefixUrl,
        underline: SizedBox(),
        onChanged: (String? value) {
          setState(() {
            selectPrefixUrl = value ?? "";
          });
          _prepareUrl();
        },
        items: _prefixUrls
            .map((e) => DropdownMenuItem<String>(
                  value: e,
                  child: Text(e, style: Theme.of(context).popupMenuTheme.textStyle,),
                ))
            .toList());
  }

  void _prepareUrl() {
    String prefix = selectPrefixUrl.trim();
    String host = _addressController.text.trim();
    String port = _portController.text.trim();
    if (port.isEmpty) {
      port = "8080";
    }
    widget.controller.text = prefix + host + ":" + port;
  }

  void _parseHostUrl() {
    Uri uri = Uri.parse(widget.onHostInputController.text);
    _addressController.text = uri.host;
    _portController.text = uri.port.toString();
    String scheme = uri.scheme + "://";
    for (var item in _prefixUrls) {
      if (item == scheme) {
        setState(() {
          selectPrefixUrl = item;
        });
        _prepareUrl();
        break;
      }
    }
    _prefixUrls.forEach((element) {
      if (element == scheme) {}
    });
  }
}
