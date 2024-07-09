import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/intro_screen/intro_page_1.dart';
import '../widgets/intro_screen/intro_page_2.dart';
import '../widgets/intro_screen/intro_page_3.dart';
import 'sgin_in.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // controller to keep track of wich page were on
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // page viwe
        PageView(
          reverse: true,
          controller: _controller,
          onPageChanged: (value) {
            setState(() {
              onLastPage = (value == 2);
            });
          },
          children: [
            IntroPage1(
              pageController: _controller,
            ),
            IntroPage2(
              pageController: _controller,
            ),
            IntroPage3(
              pageController: _controller,
            ),
          ],
        ),
        // dot indicator
        Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // next or done

                GestureDetector(
                    onTap: () {
                      if (onLastPage) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const SginIn();
                        }));
                      } else {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.circular(29)),
                      child: const Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 29,
                        color: Color.fromRGBO(7, 41, 139, 1),
                      ),
                    )),

                // dot indicator
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  textDirection: TextDirection.rtl,
                  effect: const ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 15,
                  ),
                ),
              ],
            ))
      ],
    ));
  }
}
