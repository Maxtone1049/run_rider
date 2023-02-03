import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColor.black,
          size: 18,
        ),
        title: TextView(
          text: 'About Us',
          color: AppColor.black,
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 15.h,
            horizontal: 25.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextView(
                text: 'Our Mission',
                color: AppColor.primary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: 15.h,
              ),
              TextView(
                text:
                    'We are people of innovative tech company with a burningn\ndesire to impact businesses and individuals positively. Our\nsolution seeks to solve th existing local logistics difficulties\nthat challenges the business operation of MSME’s and other\nforms of business.',
                fontSize: 12.sp,
                textAlign: TextAlign.justify,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 30.h,
              ),
              TextView(
                text: 'Our Vision',
                color: AppColor.primary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: 15.h,
              ),
              TextView(
                textAlign: TextAlign.justify,
                text:
                    'Inspired by the challenges that acompany exchange/\nmovements  of goods between  businesses and individual,\nwe are seeking to create an enabling platform where\nindependent vehicle owners (cars,  motor bikes, etc) can be\nengaged to provide a quick an reliable logistics services for\nSME’s or other form of businesses.',
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 30.h,
              ),
              TextView(
                text: 'Cities',
                color: AppColor.primary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: TextView(
                  text: 'Abuja',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: TextView(
                  text: 'Kaduna',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: TextView(
                  text: 'Ikeja',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: TextView(
                  text: 'PortHarcourt',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: TextView(
                  text: 'Kigali',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: TextView(
                  text: 'Pretoria',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: TextView(
                  text: 'Kampala',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: TextView(
                  text: 'Pittsburg',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: TextView(
                  text: 'Goerge Town',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
