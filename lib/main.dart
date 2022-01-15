import 'package:flutter/material.dart';
import 'screens/currency.dart';
import 'screens/weight.dart';
import 'screens/lenght.dart';
import 'theme.dart';
import 'package:provider/provider.dart';
import 'components/theme_manager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ThemeManager(),
      child: Consumer<ThemeManager>(
        builder: (BuildContext context, themeref, child) {
          return MaterialApp(
            title: 'Flutter App',
            debugShowCheckedModeBanner: false,
            theme: CalculatorTheme.theme(themeref.getVal),

            //  ThemeData(
            //   primarySwatch: Colors.blueGrey,
            //   canvasColor:
            //       Colors.blueGrey, //changes the drawer background color
            // ),
            home: const Currency(),
            routes: {
              Currency.id: (context) => const Currency(),
              Weight.id: (context) => const Weight(),
              Length.id: (context) => const Length(),
            },
          );
        },
      ),
    );
  }
}
