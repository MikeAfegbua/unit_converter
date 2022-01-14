import 'package:flutter/material.dart';
import 'package:phone_calculator/navigation_drawer.dart';

class Weight extends StatefulWidget {
  const Weight({Key? key}) : super(key: key);

  static const id = 'weight.dart';
  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weight'),
      ),
      backgroundColor: Colors.grey[800],
      drawer: const NavigationDrawer(),
      body: const Center(
        child: Text('Weight Page'),
      ),
    );
  }
}
