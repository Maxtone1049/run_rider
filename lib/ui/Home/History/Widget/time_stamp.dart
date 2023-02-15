import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class TimeStamp extends StatelessWidget {
  const TimeStamp({
    super.key,
    required this.asset,
    required this.address,
    required this.time,
    required this.addresstwo,
  });
  final String asset, address, addresstwo, time;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 0,
          child: Image.asset(
            asset,
            width: 14.w,
            height: 14.h,
          ),
        ),
        SizedBox(
          width: 5.h,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: '$address\n',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: const Color(0XFF8F8F8F),
              ),
              children: <TextSpan>[
                TextSpan(
                  text: addresstwo,
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 0,
          child: TextView(
            text: time,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColor.black,
          ),
        ),
      ],
    );
  }
}
