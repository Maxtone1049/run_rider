import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/Home/Payment/Widget/card_details.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.textgrey,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColor.black,
          size: 18,
        ),
        title: TextView(
          text: 'Payments',
          color: AppColor.black,
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 15.h,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 22.h,
                vertical: 25.h,
              ),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(9.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                    text: 'Cards',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  const CardDetail(
                    cardimage: 'assets/image/master.png',
                    cardnumber: '539983******3289',
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  const CardDetail(
                    cardimage: 'assets/image/master.png',
                    cardnumber: '539983******3289',
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ButtonWidget(
                        height: 50.h,
                        weight: FontWeight.w600,
                        width: 110.w,
                        fontSize: 14.sp,
                        radius: BorderRadius.circular(4.r),
                        buttonText: '+ Add Card',
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
            SizedBox(
              height: 9.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 22.h,
                vertical: 25.h,
              ),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 0,
                    child: Icon(
                      Icons.radio_button_checked_outlined,
                      size: 15.sp,
                    ),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  Expanded(
                    flex: 1,
                    child: TextView(
                      text: 'Cash',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150.h,
            ),
            ButtonWidget(
              height: 60.h,
              weight: FontWeight.w600,
              width: 250.w,
              fontSize: 14.sp,
              radius: BorderRadius.circular(4.r),
              buttonText: 'Continue',
              color: AppColor.white,
              onPressed: () {},
              buttonBorderColor: AppColor.primary,
              buttonColor: AppColor.primary,
            ),
          ],
        ),
      ),
    );
  }
}
