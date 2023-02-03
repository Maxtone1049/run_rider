import 'package:run/ui/Home/Dashboard/dashboard.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/text_form_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpThree extends StatefulWidget {
  const SignUpThree({super.key});

  @override
  State<SignUpThree> createState() => _SignUpThreeState();
}

class _SignUpThreeState extends State<SignUpThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 90.h),
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/bgapp.png'),
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.w),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                  text: 'Enter your names',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormWidget(
                  radius: BorderRadius.circular(5.r),
                  fillcolor: AppColor.textgrey,
                  label: '',
                  text: 'First Name',
                ),
                SizedBox(
                  height: 30.h,
                ),
                TextFormWidget(
                  radius: BorderRadius.circular(5.r),
                  label: '',
                  text: 'Last Name',
                ),
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonWidget(
                      weight: FontWeight.w600,
                      width: 250.w,
                      radius: BorderRadius.circular(5.r),
                      buttonText: 'Continue',
                      color: AppColor.white,
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Dashboard(),
                        ),
                      ),
                      buttonBorderColor: AppColor.primary,
                      buttonColor: AppColor.primary,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
