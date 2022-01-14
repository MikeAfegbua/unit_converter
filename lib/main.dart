import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'screens/currency.dart';
import 'screens/weight.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        canvasColor: Colors.blueGrey, //changes the drawer background color
      ),
      home: const Calculator(),
      routes: {
        Currency.id: (context) => const Currency(),
        Weight.id: (context) => const Weight(),
      },
    );
  }
}
