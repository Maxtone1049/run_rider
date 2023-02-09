import 'dart:async';

import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/auth/SignUp/signup.dart';
import 'package:run/ui/widget/text_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(
      duration,
      route,
    );
  }

  route() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignUp(),
      ),
    );
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.w),
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/bgapp.png'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/image/logo.png",
              height: 200.h,
              width: 200.w,
            ),
            SizedBox(
              height: 50.h,
            ),
            TextView(
              text: 'Pick up and delivery at\nyour finger tips',
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: AppColor.white,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
