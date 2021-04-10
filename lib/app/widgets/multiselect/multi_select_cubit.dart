import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

@immutable
abstract class MultiSelectState {}

class MultiSelectInitial extends MultiSelectState {}

class OnSelectedChange extends MultiSelectState {
  final bool isSelected;
  final int count;

  OnSelectedChange({required this.isSelected, required this.count});
}

class MultiSelectCubit<T> extends Cubit<MultiSelectState> {
  MultiSelectCubit() : super(MultiSelectInitial());

  Map<String, T> _selectedItems = HashMap();

  void addSelectedItem(String id, T item) {
    _selectedItems[id] = item;
    emit(OnSelectedChange(
        isSelected: true, count: _selectedItems.values.length));
  }

  void removeSelectedItem(String id, T item) {
    _selectedItems.remove(id);
    if (_selectedItems.length > 0) {
      emit(OnSelectedChange(
          isSelected: true, count: _selectedItems.values.length));
    } else {
      emit(OnSelectedChange(isSelected: false, count: 0));
    }
  }

  void closeSelectedMode() {
    _selectedItems.clear();
    emit(OnSelectedChange(isSelected: false, count: 0));
  }

  List<K> getSelectedItems<K>() {
    List<K> result = [];
    _selectedItems.entries.forEach((element) {
      if (element.value is K) {
        result.add(element.value as K);
      }
    });
    return result;
  }
}
