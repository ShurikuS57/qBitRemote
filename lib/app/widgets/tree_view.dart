import 'package:flutter/material.dart';

typedef void ParentSelectChanged(bool isSelected);

class TreeView extends StatelessWidget {
  final List<Parent> parentList;
  final bool hasScrollBar;

  TreeView({
    this.parentList = const <Parent>[],
    this.hasScrollBar = false,
  });

  @override
  Widget build(BuildContext context) {
    return hasScrollBar ? Scrollbar(child: _getTreeList()) : _getTreeList();
  }

  Widget _getTreeList() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return parentList[index];
      },
      itemCount: parentList.length,
    );
  }
}

class Parent extends StatefulWidget {
  final Widget parent;
  final ChildList childList;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final ParentSelectChanged? callback;
  final Key? key;

  Parent({
    required this.parent,
    required this.childList,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.min,
    this.callback,
    this.key,
  });

  @override
  ParentState createState() => ParentState();
}

class ParentState extends State<Parent> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: widget.mainAxisSize,
      crossAxisAlignment: widget.crossAxisAlignment,
      mainAxisAlignment: widget.mainAxisAlignment,
      children: <Widget>[
        GestureDetector(
          child: widget.parent,
          onTap: expand,
        ),
        _getChild(),
      ],
    );
  }

  void expand() {
    if (widget.callback != null) widget.callback!(_isSelected);
    setState(() {
      _isSelected = _toggleBool(_isSelected);
    });
  }

  bool _toggleBool(bool b) {
    return b ? false : true;
  }

  Widget _getChild() {
    return _isSelected ? widget.childList : Container();
  }
}

class ChildList extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;

  ChildList({
    this.children = const <Widget>[],
    this.mainAxisSize = MainAxisSize.min,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: children,
    );
  }
}
