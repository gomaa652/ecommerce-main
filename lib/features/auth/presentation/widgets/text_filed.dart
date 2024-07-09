import 'package:flutter/material.dart';

class TextFormmFiled extends StatelessWidget {
   const TextFormmFiled({
    super.key,
    required this.onFieldSubmitted,
      required this.hintText});
  final String hintText;
  final Function(String)? onFieldSubmitted;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border:
            Border.all(width: 0.9, color: const Color.fromRGBO(7, 41, 139, 1)),
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      height: 50,
      child:  TextFormField(
        onFieldSubmitted: onFieldSubmitted,
        textAlign: TextAlign.right,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none),
      ),
    );
  }
}
