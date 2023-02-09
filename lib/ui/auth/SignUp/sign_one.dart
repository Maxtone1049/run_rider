import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/auth/Otp/otp.dart';
import 'package:run/ui/auth/SignUp/sign_three.dart';
import 'package:run/ui/auth/SignUp/sign_two.dart';
import 'package:run/ui/widget/button_icon.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpHome extends StatelessWidget {
  const SignUpHome({super.key});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextView(
                    text: 'Sign up',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ButtonWidget(
                    fontSize: 16.sp,
                    height: 60.h,
                    width: 300.w,
                    weight: FontWeight.w700,
                    radius: BorderRadius.circular(18.r),
                    buttonText: 'Sign up with mail',
                    color: AppColor.white,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpTwo(),
                      ),
                    ),
                    buttonBorderColor: AppColor.primary,
                    buttonColor: AppColor.primary,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  TextView(
                    text: 'OR',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  ButtonIconWidget(
                    width: 300.w,
                    radius: BorderRadius.circular(20.r),
                    img: 'assets/image/google.png',
                    buttonText: 'Sign In with Google',
                    buttonColor: AppColor.white,
                    color: AppColor.black,
                    buttonBorderColor: AppColor.black,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  ButtonIconWidget(
                    width: 300.w,
                    radius: BorderRadius.circular(20.r),
                    img: 'assets/image/fb.png',
                    buttonText: 'Sign In with Facebook',
                    buttonColor: AppColor.white,
                    color: AppColor.black,
                    buttonBorderColor: AppColor.black,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  ButtonIconWidget(
                    width: 300.w,
                    radius: BorderRadius.circular(20.r),
                    img: 'assets/image/apple.png',
                    buttonText: 'Sign In with Apple',
                    buttonColor: AppColor.white,
                    color: AppColor.black,
                    buttonBorderColor: AppColor.black,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
