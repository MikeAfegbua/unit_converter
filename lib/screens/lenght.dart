import 'package:flutter/material.dart';
import 'package:phone_calculator/navigation_drawer.dart';

class Length extends StatefulWidget {
  const Length({Key? key}) : super(key: key);

  @override
  _LengthState createState() => _LengthState();
}

class _LengthState extends State<Length> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Length'),
      ),
      drawer: const NavigationDrawer(),
      body: const Center(
        child: Text('Length Page'),
      ),
    );
  }
}