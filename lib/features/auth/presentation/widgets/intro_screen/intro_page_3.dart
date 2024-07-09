import 'package:flutter/material.dart';

import 'skip.dart';

class IntroPage3 extends StatelessWidget {
   IntroPage3({super.key, required this.pageController});
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
        Image.asset('assets/image/race.png'),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'من التاجر حتي باب منزلك مع امكانية   تتبع طلبي تتيح لك معرفة الوقت المتبقي لوصول طلبك والتواصل مع المندوب',
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
