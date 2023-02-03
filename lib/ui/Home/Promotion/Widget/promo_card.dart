import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({
    required this.action,
    required this.percent,
    super.key,
  });
  final String action,percent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 0,
            child: Icon(
              Icons.radio_button_checked_outlined,
              color: AppColor.primary,
              size: 15.sp,
            ),
          ),
          SizedBox(
            width: 20.h,
          ),
          Expanded(
            flex: 1,
            child: TextView(
              text: percent,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          Expanded(
            flex: 0,
            child: InkWell(
              onTap: () {},
              child: TextView(
                text: action,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColor.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
