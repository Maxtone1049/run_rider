import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/Home/Dashboard/cancel_ride.dart';
import 'package:run/ui/Home/History/Pages/ride_details.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';

import '../../History/Widget/ride_wid.dart';

class FindDriver extends StatefulWidget {
  const FindDriver({
    super.key,
  });

  @override
  State<FindDriver> createState() => _FindDriverState();
}

class _FindDriverState extends State<FindDriver> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 600.w,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 15.h,
          ),
          decoration: const BoxDecoration(
            color: AppColor.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 73.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                        color: AppColor.ticgey,
                        borderRadius: BorderRadius.circular(
                          10.r,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 9.h,
              ),
              TextView(
                text: 'Connecting to a rider',
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.black,
              ),
              TextView(
                text: 'A rider will be on their way shortly',
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
                color: const Color(0XFF747474),
              ),
              SizedBox(
                height: 20.h,
              ),
              const LinearProgressIndicator(
                color: AppColor.primary,
                backgroundColor: AppColor.ticgey,
              ),
              SizedBox(
                height: 15.h,
              ),
              Align(
                alignment: Alignment.center,
                child: ButtonWidget(
                  weight: FontWeight.w700,
                  width: 250.w,
                  height: 55.h,
                  fontSize: 16.sp,
                  radius: BorderRadius.circular(10.r),
                  buttonText: 'Cancel Order',
                  color: AppColor.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CancelRide(),
                      ),
                    );
                  },
                  buttonBorderColor: AppColor.primary,
                  buttonColor: AppColor.primary,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        RideWidget(
          press: () {},
          asset: 'assets/image/icoone.png',
          svgpic: 'assets/image/opt.svg',
          text1: 'Kubwa Abuja...',
          text2: 'Pick up',
        ),
        RideWidget(
          press: () {},
          asset: 'assets/image/icotwo.png',
          svgpic: 'assets/image/opt.svg',
          text1: 'Kubwa Abuja...',
          text2: 'Desmond Eneojo',
        ),
        RideWidget(
          press: () {},
          asset: 'assets/image/icotwo.png',
          svgpic: 'assets/image/opt.svg',
          text1: 'Kubwa Abuja...',
          text2: 'Desmond Eneojo',
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }

  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(
      duration,
      route,
    );
  }

  route() {
    Navigator.pop(context);
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: AppColor.textgrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10.r),
        ),
      ),
      context: context,
      builder: (context) {
        return const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: RideDetails(),
        );
      },
    );
  }
}
