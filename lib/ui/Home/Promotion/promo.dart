import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/Home/Promotion/Widget/promo_card.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class Promo extends StatelessWidget {
  const Promo({super.key});

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
          text: 'Promo',
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
                  const PromoCard(action: '3', percent: '50% Off'),
                  const PromoCard(action: 'Delete', percent: '30% Off'),
                  SizedBox(
                    height: 15.h,
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
