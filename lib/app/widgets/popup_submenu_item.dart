import 'package:flutter/material.dart';

class PopupSubMenuItem<T> extends PopupMenuEntry<T> {
  const PopupSubMenuItem({
    @required this.title,
    @required this.items,
    this.onSelected,
  });

  final String title;
  final List<T> items;
  final Function(T) onSelected;

  @override
  double get height =>
      kMinInteractiveDimension; //Does not actually affect anything

  @override
  bool represents(T value) =>
      false; //Our submenu does not represent any specific value for the parent menu

  @override
  State createState() => _PopupSubMenuState<T>();
}

class _PopupSubMenuState<T> extends State<PopupSubMenuItem<T>> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<T>(
      tooltip: widget.title,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 16.0, right: 8.0, top: 12.0, bottom: 12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Text(widget.title),
            ),
            Icon(
              Icons.arrow_right,
              size: 24.0,
              color: Theme.of(context).iconTheme.color,
            ),
          ],
        ),
      ),
      onCanceled: () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
      },
      onSelected: (T value) {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
        widget.onSelected?.call(value);
      },
      offset: Offset.zero,
      itemBuilder: (BuildContext context) {
        return widget.items
            .map(
              (item) => PopupMenuItem<T>(
                value: item,
                child: Text(item.toString()),
              ),
            )
            .toList();
      },
    );
  }
}
