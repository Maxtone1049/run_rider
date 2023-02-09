import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class DrawButton extends StatelessWidget {
  const DrawButton({
    required this.text,
    required this.image,
    required this.onPressed,
    super.key,
  });
  final String image;
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Row(
          children: [
            Expanded(
              flex: 0,
              child: SvgPicture.asset(
                image,
                width: 24.w,
                height: 24.h,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              flex: 1,
              child: TextView(
                text: text,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
