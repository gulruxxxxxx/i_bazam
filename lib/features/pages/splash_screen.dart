import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_baza/assets/icons.dart';

import 'onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(
          MaterialPageRoute(
          builder: (BuildContext context) => OnBoarding()
          )
      );
    });
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Column(
          children: [
            SizedBox(height: 400,),
            Center(
              child: SvgPicture.asset(AppIcons.splash),
            ),
            SizedBox(height: 300,),
            SvgPicture.asset(AppIcons.loading),
          ],
        ),

    );
  }
}
