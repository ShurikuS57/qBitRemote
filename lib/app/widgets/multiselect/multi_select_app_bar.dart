import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'multi_select_cubit.dart';

class MultiselectAppBar extends StatefulWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final List<Widget>? selectingActions;

  const MultiselectAppBar(
      {Key? key, required this.appBar, this.selectingActions})
      : super(key: key);

  @override
  _MultiselectAppBarState createState() => _MultiselectAppBarState();

  @override
  Size get preferredSize => appBar.preferredSize;
}

class _MultiselectAppBarState extends State<MultiselectAppBar> {
  bool _isSelected = false;
  int _selectedCount = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MultiSelectCubit, MultiSelectState>(
      builder: (BuildContext context, state) {
        if (state is OnSelectedChange) {
          _isSelected = state.isSelected;
          _selectedCount = state.count;
        }

        return Container(
          color: widget.appBar.backgroundColor ??
              AppBarTheme.of(context).backgroundColor ??
              Theme.of(context).primaryColor,
          child: AnimatedSwitcher(
            duration: kThemeAnimationDuration,
            child: !_isSelected
                ? widget.appBar
                : AppBar(
                    key: Key('multi-select'),
                    leading: BackButton(
                      onPressed: () {
                        context.read<MultiSelectCubit>().closeSelectedMode();
                      },
                    ),
                    titleSpacing: 0.0,
                    title: Text('$_selectedCount items selected'),
                    actions: widget.selectingActions,
                  ),
          ),
        );
      },
    );
  }
}
