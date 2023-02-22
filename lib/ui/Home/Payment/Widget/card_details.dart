import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({
    required this.cardnumber,
    required this.cardimage,
    super.key,
  });
  final String cardnumber, cardimage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15.h,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 0,
            child: Icon(
              Icons.radio_button_checked_sharp,
              color: AppColor.primary,
              size: 15.sp,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            flex: 0,
            child: Image.asset(
              cardimage,
              width: 31.w,
              height: 24.h,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            flex: 1,
            child: TextView(
              text: cardnumber,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
