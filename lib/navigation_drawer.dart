import 'package:flutter/material.dart';
import 'components/drawer_head.dart';
import 'components/drawer_list_tile.dart';
import 'screens/currency.dart';
import 'screens/weight.dart';
import 'screens/lenght.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHead(),
          ListTiles(
              listTileName: 'Currency',
              myIconName: Icons.change_circle_outlined,
              myNavRoute: () {
                Navigator.pushNamed(
                  context,
                  Currency.id,
                );
              }),
          ListTiles(
            listTileName: 'Length',
            myIconName: Icons.maximize,
            myNavRoute: () {
              Navigator.pushNamed(context, Length.id);
            },
          ),
          ListTiles(
              listTileName: 'Weight',
              myIconName: Icons.table_chart,
              myNavRoute: () {
                Navigator.pushNamed(
                  context,
                  Weight.id,
                );
              }),
        ],
      ),
    );
  }
}
