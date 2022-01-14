import 'package:flutter/material.dart';
import 'package:phone_calculator/navigation_drawer.dart';

class Currency extends StatefulWidget {
  const Currency({Key? key}) : super(key: key);
  static const id = 'currency.dart';

  @override
  _CurrencyState createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: const Text('Currency'),
      ),
      drawer: const NavigationDrawer(),
      body: const Center(
        child: Image(
          image: AssetImage('assets/drawer_image.png'),
        ),
      ),
    );
  }
}
