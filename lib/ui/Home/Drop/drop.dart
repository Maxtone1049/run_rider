import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/Home/Drop/Widget/function_button.dart';
import 'package:run/ui/Home/Drop/dispatch.dart';
import 'package:run/ui/Home/Drop/dropoff.dart';
import 'package:run/ui/Home/Drop/pickup.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/text_form_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class DropLocation extends StatefulWidget {
  const DropLocation({super.key});

  @override
  State<DropLocation> createState() => _DropLocationState();
}

class _DropLocationState extends State<DropLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.textgrey,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColor.black,
        ),
        title: TextView(
          text: 'Let\'s Run It',
          color: AppColor.black,
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 18.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FunctionButton(
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DispatchScreen(),
                  ),
                ),
                svg: 'assets/image/package.svg',
                text: 'What are you transporting?',
              ),
              SizedBox(
                height: 5.h,
              ),
              FunctionButton(
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PickUpLocation(),
                  ),
                ),
                svg: 'assets/image/pick.svg',
                text: 'Pick up location',
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextView(
                      text: 'Receiver Details',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.primary,
                    ),
                    TextView(
                      text:
                          'Please enter the correct details of the\nreceiver of the parcels',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              FunctionButton(
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DropOffLocation(),
                  ),
                ),
                svg: 'assets/image/drop.svg',
                text: 'Drop off location',
              ),
              SizedBox(
                height: 5.h,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 15.h),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormWidget(
                      radius: BorderRadius.circular(5.r),
                      fillcolor: AppColor.textgrey,
                      label: '',
                      text: 'Name',
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    TextFormWidget(
                      radius: BorderRadius.circular(5.r),
                      fillcolor: AppColor.textgrey,
                      label: '',
                      text: 'Phone Number*',
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    weight: FontWeight.w600,
                    width: 250.w,
                    radius: BorderRadius.circular(10.r),
                    buttonText: 'Continue',
                    color: AppColor.white,
                    onPressed: () => {},
                    buttonBorderColor: AppColor.ticgey,
                    buttonColor: AppColor.ticgey,
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
