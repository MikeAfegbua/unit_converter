import 'package:flutter/material.dart';
import 'screens/currency.dart';
import 'screens/weight.dart';
import 'screens/lenght.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final myTheme = CalculatorTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      //theme: CalculatorTheme.light(),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        canvasColor: Colors.blueGrey, //changes the drawer background color
      ),
      home: const Currency(),
      routes: {
        Currency.id: (context) => const Currency(),
        Weight.id: (context) => const Weight(),
        Length.id: (context) => const Length(),
      },
    );
  }
}
