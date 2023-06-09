import 'dart:collection';

import 'package:flutter/material.dart';

import './item.dart';

class ItemData with ChangeNotifier {
  final List<Item> _items = [
    Item(title: 'First Task'),
    Item(title: 'Second Task'),
    Item(title: 'Third Task'),
  ];

  void toggleStatus(int index) {
    _items[index].toggleStatus();
    notifyListeners();
  }

  void addItem(String title) {
    _items.add(Item(title: title));
    notifyListeners();
  }

  void deleteItem(int index) {
    _items.removeAt(index);
    notifyListeners();
  }

  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);
}
