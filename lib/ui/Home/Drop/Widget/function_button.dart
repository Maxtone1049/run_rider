import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class FunctionButton extends StatelessWidget {
  const FunctionButton({
    required this.svg,
    required this.text,
    required this.press,
    super.key,
  });
  final String svg, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: 75.h,
        padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 20.h),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 0,
              child: SvgPicture.asset(
                svg,
                height: 24.h,
                width: 24.w,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              flex: 1,
              child: TextView(
                text: text,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Expanded(
              flex: 0,
              child: Icon(
                Icons.chevron_right,
                size: 20.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
