import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
    required this.prefs,
    required this.tapped,
  });
  final String prefs;
  final VoidCallback tapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapped,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 20.h,
        ),
        decoration: const BoxDecoration(
          color: AppColor.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextView(
              text: prefs,
              fontSize: 14.sp,
              color: AppColor.black,
              fontWeight: FontWeight.w400,
            ),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
