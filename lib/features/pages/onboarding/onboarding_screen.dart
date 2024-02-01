import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../authentication/presentation/pages/login_screen.dart';
import 'onboarding_1.dart';
import 'onboarding_2.dart';
import 'onboarding_3.dart';
import 'onboarding_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 310, top: 69),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => LoginScreen(),
                  ),
                );
              },
              child: const Text(
                "O'tkazib yuborish",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              children: [
                PageOne(),
                PageTwo(),
                PageThree(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (currentPage > 0)
                GestureDetector(
                  onTap: () {
                    controller.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.ease);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 24, bottom: 47),
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey,
                      ),
                      child: Icon(Icons.arrow_left_rounded, color: Colors.white),
                    ),
                  ),
                ),
              const SizedBox(width: 110),
              SmoothPageIndicator(
                controller: controller,
                count: 3, // Number of pages
                effect: WormEffect(activeDotColor: Colors.grey, dotHeight: 10, dotWidth: 10),
              ),
              const SizedBox(width: 110),
              if (currentPage < 2)
                GestureDetector(
                  onTap: () {
                    controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.ease);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 47),
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey,
                      ),
                      child: Icon(Icons.arrow_right_rounded, color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}