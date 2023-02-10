import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class HistoryDetail extends StatelessWidget {
  const HistoryDetail({super.key});

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
          text: '28 Feb, 2021',
          color: AppColor.black,
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 5.h,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
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
                      height: 29.h,
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
          ],
        ),
      ),
    );
  }
}
