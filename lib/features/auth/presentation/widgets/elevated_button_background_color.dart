import 'package:flutter/material.dart';

import '../pages/code_number.dart';

class ElevatedButtonBackgroundColor extends StatelessWidget {
  ElevatedButtonBackgroundColor({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final void Function()? onPressed;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all(const Color.fromRGBO(7, 41, 139, 1)),
          padding: WidgetStateProperty.all(const EdgeInsets.all(12)),
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 19, fontFamily: 'Cairo'),
        ),
      ),
    );
  }
}
