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
      appBar: AppBar(
        title: const Text('Currency'),
      ),
      drawer: const NavigationDrawer(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              right: 180.0,
              top: 20.0,
            ),
            child: Text(
              'Naira   [NGR]',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const TextField(
            keyboardType: TextInputType.numberWithOptions(),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 180.0,
              top: 20.0,
            ),
            child: Text(
              'Dollar   [USD]',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const TextField(
            keyboardType: TextInputType.numberWithOptions(),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 250),
            child: Icon(
              Icons.arrow_back_sharp,
            ),
          ),
          Expanded(
              child: GridView.count(
            crossAxisCount: 4,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            shrinkWrap: true,
            children: List.generate(
              16,
              (index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: Colors.red,
                    height: 10,
                    width: 10,
                  ),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
