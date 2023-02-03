import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({
    super.key,
    required this.img,
    required this.address,
    required this.time,
    required this.amount,
  });
  final String img, address, time, amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.h,
      ),
      decoration: const BoxDecoration(
        color: AppColor.textgrey,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 0,
            child: SvgPicture.asset(
              img,
              width: 18.w,
              height: 22.h,
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                  text: address,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                TextView(
                  text: time,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 0,
            child: TextView(
              text: 'NGN ' + amount,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
