import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/Home/History/Widget/time_stamp.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/input_field.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class DeliverScreen extends StatelessWidget {
  const DeliverScreen({super.key});

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
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 5.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: TextView(
                  text: 'Your Parcel Has Been Delivered',
                  color: AppColor.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 15.h,
                ),
                child: TextView(
                  text: '28 Feb, 2021',
                  color: AppColor.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: 410.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 20.h,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child: Image.asset(
                        'assets/image/profile.png',
                        height: 40.h,
                        width: 40.h,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      flex: 2,
                      child: TextView(
                        text: 'David Olottah',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: ButtonWidget(
                        height: 35.h,
                        weight: FontWeight.w600,
                        width: 125.w,
                        fontSize: 14.sp,
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
              SizedBox(
                height: 5.h,
              ),
              Container(
                width: 410.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 20.h,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  children: [
                    const TimeStamp(
                      address: 'Road 36, Phase 3, Kubwa',
                      asset: 'assets/image/bs.png',
                      time: '9:30 Am',
                      addresstwo: 'Abuja, FCT',
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    const TimeStamp(
                      address: 'Musa danjuma Stree, 69 Road,',
                      asset: 'assets/image/bn.png',
                      time: '1:00 PM',
                      addresstwo: 'Gwarimpa, FCT',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                width: 410.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 10.h,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView(
                      text: 'Reciever Details',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.black,
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 0,
                          child: TextView(
                            text: 'Name',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0XFF8F8F8F),
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: TextView(
                            text: 'Oluwadami Kelechi',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0XFF8F8F8F),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 0,
                          child: TextView(
                            text: 'Phone number',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0XFF8F8F8F),
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: TextView(
                            text: '+234 809 999 9994',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0XFF8F8F8F),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                width: 410.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 20.h,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView(
                      text: 'Payment',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.black,
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Row(
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
                        SizedBox(
                          height: 7.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                width: 410.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 20.h,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView(
                      text: 'Rate your rider',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.black,
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    RatingBar(
                      initialRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      ratingWidget: RatingWidget(
                        full: const Icon(
                          Icons.star,
                          color: AppColor.primary,
                          size: 15,
                        ),
                        half: const Icon(
                          Icons.star_half,
                          color: AppColor.primary,
                          size: 15,
                        ),
                        empty: const Icon(
                          Icons.star_outline,
                          color: AppColor.primary,
                          size: 15,
                        ),
                      ),
                      onRatingUpdate: (value) {},
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    CustomTextfield(
                      width: 358.w,
                      height: 97.h,
                      radius: BorderRadius.circular(4.r),
                      hintText: 'Drop a comment',
                      obscureText: false,
                      maxline: 8,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    height: 50.h,
                    weight: FontWeight.w600,
                    width: 300.w,
                    fontSize: 14.sp,
                    radius: BorderRadius.circular(5.r),
                    buttonText: 'Proceed',
                    color: AppColor.white,
                    onPressed: () {},
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
