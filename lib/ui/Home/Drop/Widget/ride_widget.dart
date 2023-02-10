import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class RideWidget extends StatefulWidget {
  const RideWidget({
    super.key,
    required this.asset,
    required this.type,
    required this.price1,
    required this.total,
    required this.precentage,
    // required this.press,
  });
  // final VoidCallback press;
  final String asset, type, price1, total, precentage;

  @override
  State<RideWidget> createState() => _RideWidgetState();
}

class _RideWidgetState extends State<RideWidget> {
  bool _first = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _first = !_first;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 30.h,
        ),
        decoration: BoxDecoration(
          color: !_first ? AppColor.blue : AppColor.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  widget.asset,
                  height: 58.h,
                  width: 97.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextView(
                  text: widget.type,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColor.black,
                ),
              ],
            ),
            Column(
              children: [
                TextView(
                  text: 'NGN ${widget.price1}',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColor.black,
                ),
                SizedBox(
                  height: 10.h,
                ),
                RichText(
                  text: TextSpan(
                    text: 'NGN ${widget.total}',
                    style: GoogleFonts.poppins(
                      color: AppColor.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: widget.precentage,
                        style: GoogleFonts.poppins(
                          color: AppColor.primary,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
