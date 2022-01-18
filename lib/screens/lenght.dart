import 'package:flutter/material.dart';
import 'package:phone_calculator/navigation_drawer.dart';
import 'package:phone_calculator/components/custom_button.dart';

class Length extends StatefulWidget {
  const Length({Key? key}) : super(key: key);
  static const id = 'lenght.dart';

  @override
  _LengthState createState() => _LengthState();
}

class _LengthState extends State<Length> {
  late TextEditingController myNairaC;
  late TextEditingController myDollarC;

  List<String> myVal = [
    '7',
    '8',
    '9',
    'del',
    '4',
    '5',
    '6',
    'C',
    '1',
    '2',
    '3',
    '.',
    '<',
    '0',
    '>',
    ','
  ];
  @override
  void initState() {
    super.initState();
    myNairaC = TextEditingController(text: '');
    myDollarC = TextEditingController(text: '');
  }

  void myListener() {}

  @override
  void dispose() {
    myNairaC.dispose();
    myDollarC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Length'),
      ),
      drawer: const NavigationDrawer(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              right: 180.0,
              top: 20.0,
              bottom: 10,
            ),
            child: Text(
              '  INCHES',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextField(
            style: const TextStyle(
              fontSize: 30,
            ),
            controller: myNairaC,
            keyboardType: TextInputType.none,
            cursorHeight: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 180.0,
              top: 20.0,
              bottom: 10,
            ),
            child: Text(
              '   CM',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextField(
            style: const TextStyle(
              fontSize: 30,
            ),
            controller: myDollarC,
            keyboardType: TextInputType.none,
          ),
          const SizedBox(height: 50, width: 20),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: myVal.length,
                itemBuilder: (context, int index) {
                  return MyButton(
                      tap: () {
                        if (index == 0 ||
                            index == 1 ||
                            index == 2 ||
                            index == 4 ||
                            index == 5 ||
                            index == 6 ||
                            index == 8 ||
                            index == 9 ||
                            index == 10 ||
                            index == 11 ||
                            index == 13) {
                          myNairaC.text += myVal[index];
                          myNairaC.selection = TextSelection.fromPosition(
                            TextPosition(offset: myNairaC.text.length),
                          );
                          var a = double.parse(myNairaC.text) * 30.48;
                          myDollarC.text = a.toStringAsFixed(1);
                          myDollarC.selection = TextSelection.fromPosition(
                            TextPosition(offset: myDollarC.text.length),
                          );
                        } else if (index == 3) {
                          if (!(myNairaC.text == '')) {
                            List<String> c = myNairaC.text.split("");
                            c.removeLast();
                            myNairaC.text = c.join();
                          }
                        } else if (index == 7) {
                          myDollarC.clear();
                          myNairaC.clear();
                        } else {
                          null;
                        }
                      },
                      texts: myVal[index]);
                }),
          ),
        ],
      ),
    );
  }
}
