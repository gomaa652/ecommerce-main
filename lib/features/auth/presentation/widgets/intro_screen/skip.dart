import 'package:flutter/material.dart';

class Skip extends StatelessWidget {
   Skip({super.key, required this.pageController});
  PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: const EdgeInsets.only(top: 60, left: 30),
              child: GestureDetector(
                  onTap: () {
                    pageController.jumpToPage(2);
                  },
                  child: const Text(
                    'تخطي',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                        fontSize: 18, color: Color.fromRGBO(7, 41, 139, 1)),
                  )),
            );
  }
}