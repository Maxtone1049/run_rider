import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/Home/Drop/dispatch.dart';
import 'package:run/ui/Home/Drop/dropoff.dart';
import 'package:run/ui/Home/Drop/pickup.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/input_field.dart';
import 'package:run/ui/widget/text_form_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';

import 'function_button.dart';

class NormalForm extends StatelessWidget {
  const NormalForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 12.h,
          ),
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
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 15.h,
          ),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormWidget(
                color1: AppColor.textgrey,
                color2: AppColor.textgrey,
                color3: AppColor.textgrey,
                color4: AppColor.textgrey,
                radius: BorderRadius.circular(5.r),
                fillcolor: AppColor.textgrey,
                label: '',
                text: 'Name',
              ),
              SizedBox(
                height: 30.h,
              ),
              TextView(
                text: 'Phone Number *',
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0XFF7F7F7F),
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CustomTextfield(
                      height: 50.h,
                      radius: BorderRadius.circular(8.r),
                      hintText: '',
                      obscureText: false,
                    ),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  const Expanded(
                    flex: 0,
                    child: Icon(
                      Icons.verified_user_sharp,
                      color: AppColor.primary,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
