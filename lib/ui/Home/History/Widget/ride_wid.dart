import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class RideWidget extends StatelessWidget {
  const RideWidget({
    super.key,
    required this.asset,
    required this.text1,
    required this.text2,
    required this.svgpic,
    required this.press,
  });
  final String asset, text1, text2, svgpic;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 9.h,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 18.h,
        ),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 0,
              child: Image.asset(
                asset,
                height: 48.h,
                width: 43.w,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                    text: text1,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  TextView(
                    text: text2,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: InkWell(
                onTap: press,
                child: SvgPicture.asset(
                  svgpic,
                  width: 30.w,
                  height: 24.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
