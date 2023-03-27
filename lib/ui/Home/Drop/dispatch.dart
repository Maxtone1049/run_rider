import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/input_field.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class DispatchScreen extends StatelessWidget {
  const DispatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColor.black,
          size: 18.0,
        ),
        title: TextView(
          text: 'What are you dispatching',
          color: AppColor.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextfield(
                width: 400.w,
                height: 272.h,
                radius: BorderRadius.circular(10.r),
                hintText: 'What are you transporting?',
                obscureText: false,
                maxline: 11,
              ),
              // SizedBox(
              //   height: 25.h,
              // ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/image/camera.svg',
                          height: 53.h,
                          width: 53.w,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      SvgPicture.asset(
                        'assets/image/line.svg',
                        height: 30.h,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 120.h,
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ButtonWidget(
                      fontSize: 16.sp,
                      height: 55.h,
                      weight: FontWeight.w600,
                      width: 250.w,
                      radius: BorderRadius.circular(10.r),
                      buttonText: 'Continue',
                      color: AppColor.white,
                      onPressed: () => {},
                      buttonBorderColor: AppColor.primary,
                      buttonColor: AppColor.primary,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
