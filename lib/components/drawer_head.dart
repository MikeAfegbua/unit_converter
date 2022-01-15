import 'package:flutter/material.dart';
import 'package:phone_calculator/components/theme_manager.dart';
import 'package:provider/provider.dart';

class DrawerHead extends StatefulWidget {
  const DrawerHead({Key? key}) : super(key: key);

  @override
  _DrawerHeadState createState() => _DrawerHeadState();
}

class _DrawerHeadState extends State<DrawerHead> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/drawer_image.png'),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 40.0,
            right: 10.0,
            child: Switch(
              value: val,
              onChanged: (newVal) {
                Provider.of<ThemeManager>(context, listen: false).getVal =
                    !Provider.of<ThemeManager>(context, listen: false).getVal;
                setState(() {
                  val = newVal;
                });
              },
            ),
          ),
          const Positioned(
            top: 100.0,
            right: 20.0,
            child: IconButton(
              iconSize: 30.0,
              color: Colors.green,
              icon: Icon(Icons.settings),
              onPressed: null,
            ),
          ),
          const Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text(
              "My Converter",
              //style: CalculatorTheme.lightTextTheme.headline2,
            ),
          ),
        ],
      ),
    );
  }
}
