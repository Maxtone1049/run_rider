import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.asset,
    required this.action,
    required this.press,
  });
  final String asset, action;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 20.h,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              asset,
              width: 25.w,
              height: 25.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            TextView(
              text: action,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
