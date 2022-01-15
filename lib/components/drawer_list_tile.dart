import 'package:flutter/material.dart';

class ListTiles extends StatelessWidget {
  final String listTileName;
  final IconData myIconName;
  final Function()? myNavRoute;
  const ListTiles(
      {Key? key,
      required this.listTileName,
      required this.myIconName,
      required this.myNavRoute})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        listTileName,
      ),
      minLeadingWidth: 50,
      leading: Icon(
        myIconName,
        size: 30.0,
      ),
      onTap: myNavRoute,
      selectedTileColor: Colors.green,
    );
  }
}
