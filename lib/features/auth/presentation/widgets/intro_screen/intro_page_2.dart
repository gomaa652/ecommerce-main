import 'package:flutter/material.dart';

import 'skip.dart';

class IntroPage2 extends StatelessWidget {
   IntroPage2({super.key, required this.pageController});
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
        Container(
          child: Image.asset('assets/image/love.png',width: 400,height: 400,),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'في يلا عندنا كل المتاجر اللي تحتاجها مطاعم . سوبر ماركت. صيدليات و اكثر',
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
