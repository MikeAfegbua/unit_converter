import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:phone_calculator/components/theme_manager.dart';

class MyButton extends StatelessWidget {
  final Function() tap;
  final String texts;
  const MyButton({Key? key, required this.tap, required this.texts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        color: Provider.of<ThemeManager>(
          context,
        ).getVal
            ? Colors.grey[800]
            : Colors.white,
        height: 80,
        width: 80,
        child: Center(
          child: Text(
            texts,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
