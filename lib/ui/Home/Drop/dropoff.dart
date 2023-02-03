import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_icon.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/input_field.dart';

class DropOffLocation extends StatelessWidget {
  const DropOffLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColor.black,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.h),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/image/pin.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  SizedBox(width: 15.w),
                  Expanded(
                    flex: 1,
                    child: CustomTextfield(
                      radius: BorderRadius.circular(10.r),
                      obscureText: false,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/image/block.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  SizedBox(width: 15.w),
                  SizedBox(
                    width: 142.w,
                    child: CustomTextfield(
                      radius: BorderRadius.circular(10.r),
                      hintText: 'Block Number',
                      obscureText: false,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 250.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
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
            ],
          ),
        ),
      ),
    );
  }
}
