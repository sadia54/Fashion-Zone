import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class SearchInput extends StatelessWidget {
  List list = [
    "Girl's Winter Dress",
    "Boye's Winter Dress",
    "Childer's Winter Dress",
    "Shows For Winter",
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GFSearchBar(
      searchList: list,
      searchQueryBuilder: (query, list) => list.where((Item) {
        return Item.toString().toLowerCase().contains(query.toLowerCase());
      }).toList(),
      hideSearchBoxWhenItemSelected: false,
      overlaySearchListItemBuilder: (dynamic item) => Container(
        padding: EdgeInsets.all(5),
        child: Text(
          item,
          style: TextStyle(fontSize: 15),
        ),
      ),
      onItemSelected: (dynamic item) {
        setState(() {
          print('$item');
        });
      },
    );
  }
}

void setState(Function() param0) {}
