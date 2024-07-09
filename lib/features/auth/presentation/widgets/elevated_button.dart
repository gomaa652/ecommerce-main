import 'package:flutter/material.dart';

class ElevatedButtonn extends StatelessWidget {
  ElevatedButtonn({
    super.key,
    required this.text
  });
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(7, 41, 139, 1))),
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          padding: WidgetStateProperty.all(const EdgeInsets.all(12)),
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        ),
        child:  Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w800,
              color: Color.fromRGBO(7, 41, 139, 1),
              fontSize: 19,
              fontFamily: 'Cairo'),
        ),
      ),
    );
  }
}
