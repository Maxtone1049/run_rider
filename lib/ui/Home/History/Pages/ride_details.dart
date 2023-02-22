import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/Home/Dashboard/cancel_ride.dart';
import 'package:run/ui/Home/History/Pages/deliver_screen.dart';
import 'package:run/ui/Home/History/Widget/ride_wid.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';

import 'mini_copy.dart';

class RideDetails extends StatelessWidget {
  const RideDetails({super.key});

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
                text: 'Arriving in 4 mins',
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.black,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 15.h,
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 0,
                        child: Image.asset(
                          'assets/image/vehicle.png',
                          width: 43.w,
                          height: 43.h,
                        )),
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                      flex: 1,
                      child: TextView(
                        text: 'Blue baja 3000',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.black,
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 3.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.textgrey,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Center(
                          child: TextView(
                            text: 'KUJ-33-MUS',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColor.primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 15.h,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DeliverScreen(),
                              ));
                        },
                        child: Image.asset(
                          'assets/image/profile.png',
                          width: 50.w,
                          height: 50.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DeliverScreen(),
                              ));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView(
                              text: 'David Olottah',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColor.black,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 0,
                                  child: TextView(
                                    text: '4.3',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF8F8F8F),
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Image.asset(
                                    'assets/image/star.png',
                                    width: 18.w,
                                    height: 18.h,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: ButtonWidget(
                        fontSize: 14.sp,
                        height: 35.h,
                        width: 125.w,
                        weight: FontWeight.w600,
                        radius: BorderRadius.circular(20.r),
                        buttonText: 'Contact Rider',
                        color: AppColor.white,
                        onPressed: () {},
                        buttonBorderColor: AppColor.primary,
                        buttonColor: AppColor.primary,
                      ),
                    ),
                  ],
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
          press: () {
            showModalBottomSheet(
              backgroundColor: Colors.white,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              context: context,
              builder: (context) {
                return const SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: MiniCopier(),
                );
              },
            );
          },
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
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 18.h,
          ),
          decoration: const BoxDecoration(
            color: AppColor.white,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 0,
                child: Image.asset(
                  'assets/image/cash.png',
                  width: 43.w,
                  height: 23.h,
                ),
              ),
              SizedBox(
                width: 5.h,
              ),
              Expanded(
                flex: 1,
                child: TextView(
                  text: 'Cash',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0XFF8F8F8F),
                ),
              ),
              SizedBox(
                width: 7.h,
              ),
              Expanded(
                flex: 0,
                child: TextView(
                  text: 'NGN 800',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0XFF8F8F8F),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 18.h,
          ),
          decoration: const BoxDecoration(
            color: AppColor.white,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 0,
                child: Image.asset(
                  'assets/image/share.png',
                  width: 43.w,
                  height: 23.h,
                ),
              ),
              SizedBox(
                width: 5.h,
              ),
              Expanded(
                flex: 1,
                child: TextView(
                  text: 'Share dispatch details',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0XFF8F8F8F),
                ),
              ),
              SizedBox(
                width: 7.h,
              ),
              const Expanded(
                flex: 0,
                child: Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 20.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => const CancelRide()),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 18.h,
            ),
            decoration: const BoxDecoration(
              color: AppColor.white,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 0,
                  child: Image.asset(
                    'assets/image/cancel.png',
                    width: 43.w,
                    height: 23.h,
                  ),
                ),
                SizedBox(
                  width: 5.h,
                ),
                Expanded(
                  flex: 1,
                  child: TextView(
                    text: 'Cancel',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF8F8F8F),
                  ),
                ),
                SizedBox(
                  width: 7.h,
                ),
                const Expanded(
                  flex: 0,
                  child: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    size: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
