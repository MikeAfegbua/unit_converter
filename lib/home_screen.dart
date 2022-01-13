import 'package:flutter/material.dart';
import 'navigation_drawer.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String titles = 'Values';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles),
      ),
      backgroundColor: Colors.grey.shade800,
      drawer: const SafeArea(
        child: NavigationDrawer(),
      ),
      body: const Center(
        child: Image(
          image: AssetImage('assets/drawer_image.png'),
        ),
      ),
    );
  }
}
