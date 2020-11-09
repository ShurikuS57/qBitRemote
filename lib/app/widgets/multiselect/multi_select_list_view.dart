import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'multi_select_cubit.dart';

class ListViewSelected<Widget> extends StatefulWidget {
  ListViewSelected(
      {this.items,
      this.selectedColor,
      this.onChangeSelected,
      this.onTabItem});

  final List<Widget> items;
  final Color selectedColor;
  final Function(Widget, bool) onChangeSelected;
  final Function(Widget) onTabItem;

  @override
  _ListViewSelectedState createState() => _ListViewSelectedState();
}

class _ListViewSelectedState extends State<ListViewSelected> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext ctxt, int index) {
          Widget item = widget.items[index];
          return SelectedItem(
            itemWidget: item,
            selectedColor: widget.selectedColor,
            isSelected: (bool value) {
              setState(() {
                widget.onChangeSelected(widget.items[index], value);
              });
            },
            key: Key(index.toString()),
            onTapItem: (value) {
              widget.onTabItem(value);
            },
          );
        });
  }
}

class SelectedItem extends StatefulWidget {
  final Key key;
  final Widget itemWidget;
  final Color selectedColor;
  final ValueChanged<bool> isSelected;
  final ValueChanged<Widget> onTapItem;

  SelectedItem(
      {this.key, this.itemWidget, this.selectedColor, this.isSelected, this.onTapItem});

  @override
  _SelectedItemState createState() => _SelectedItemState();
}

class _SelectedItemState extends State<SelectedItem> {
  bool isSelected = false;
  bool isSelectedActivate = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MultiSelectCubit, MultiSelectState>(
      builder: (context, state) {
        if (state is OnSelectedChange) {
          isSelectedActivate = state.isSelected;
          if (isSelectedActivate == false) {
            isSelected = false;
          }
        }
        return InkWell(
          onLongPress: () {
            setState(() {
              isSelected = !isSelected;
              widget.isSelected(isSelected);
            });
          },
          onTap: () {
            if (isSelectedActivate) {
              setState(() {
                isSelected = !isSelected;
                widget.isSelected(isSelected);
              });
            } else {
              widget.onTapItem(widget.itemWidget);
            }
          },
          child: Stack(
            children: <Widget>[
              widget.itemWidget,
              isSelected
                  ? Positioned.fill(
                      child: Container(
                      color: widget.selectedColor,
                    ))
                  : Container()
            ],
          ),
        );
      },
    );
  }
}
