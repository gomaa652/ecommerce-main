import 'package:flutter/material.dart';

import 'skip.dart';

class IntroPage1 extends StatelessWidget {
   IntroPage1({super.key, required this.pageController});

  PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
        children: [
          // skip
          Container(
            margin: const EdgeInsets.only(bottom: 60,right: 20),
            // color: Colors.amber,
            child: Skip(pageController: pageController,)),
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(bottom: 20),
            child: Image.asset(
              "assets/image/yalla.png",
              width: 215,
              height: 74,
            ),
          ),
        ],
                  ),
        Image.asset('assets/image/sit.png'),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 25),
          child: Text(
            'خليك في بيتك و اشتري كل اللي تحتاجة من تطبيق يلا تسوق بلا حدود',
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 18, fontFamily: 'Cairo'),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 70,
        )
      ],
    );
  }
}
