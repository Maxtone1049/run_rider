import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/auth/Otp/otp.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/text_form_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                  text: 'Please enter your number',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextView(
                  text: 'We will send you an OTP code for\nverification.',
                  fontSize: 12.sp,
                  lineHeight: 18.sp,
                  maxLines: 3,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 30.h,
                ),
                TextView(
                  text: 'Phone Number*',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextFormWidget(
                        color1: AppColor.textgrey,
                        color2: AppColor.textgrey,
                        color3: AppColor.textgrey,
                        color4: AppColor.textgrey,
                        radius: BorderRadius.circular(5.r),
                        // suffixIcon: Icon,
                        label: '+234',
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      flex: 2,
                      child: TextFormWidget(
                        color1: AppColor.textgrey,
                        color2: AppColor.textgrey,
                        color3: AppColor.textgrey,
                        color4: AppColor.textgrey,
                        radius: BorderRadius.circular(5.r),
                        label: '803 322 3892',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'By pressing continue, you agree to our',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 9.sp,
                          color: AppColor.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Terms And Condition',
                            style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primary),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonWidget(
                          fontSize: 16.sp,
                          height: 50.h,
                          width: 250.w,
                          weight: FontWeight.w600,
                          radius: BorderRadius.circular(5.r),
                          buttonText: 'Continue',
                          color: AppColor.white,
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Otp(),
                            ),
                          ),
                          buttonBorderColor: AppColor.primary,
                          buttonColor: AppColor.primary,
                        ),
                      ],
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
