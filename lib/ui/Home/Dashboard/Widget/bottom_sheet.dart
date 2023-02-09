import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run/ui/Home/Drop/Widget/ride_widget.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class BottomDetail extends StatelessWidget {
  const BottomDetail({
    super.key,
    required Shader linegrad,
  }) : _linegrad = linegrad;

  final Shader _linegrad;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const RideWidget(
          // press: () {},
          asset: 'assets/image/bike.png',
          precentage: ' -10%',
          total: '1,100',
          price1: '1,000',
          type: 'Runner',
        ),
        const Divider(),
        const RideWidget(
          // press: () {},
          asset: 'assets/image/bike.png',
          precentage: ' -10%',
          total: '1,100',
          price1: '1,000',
          type: 'Runner',
        ),
        const Divider(),
        const RideWidget(
          // press: () {},
          asset: 'assets/image/car.png',
          precentage: ' -10%',
          total: '1,100',
          price1: '1,000',
          type: 'Runner',
        ),
        const Divider(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 30.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TextView(
                        text: 'Payment',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      const Icon(
                        Icons.expand_more_outlined,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/image/cash.svg'),
                      TextView(
                        text: 'Cash',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Use Promo',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    foreground: Paint()..shader = _linegrad,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        ButtonWidget(
          weight: FontWeight.w700,
          width: 299.w,
          height: 55.h,
          fontSize: 16.sp,
          radius: BorderRadius.circular(10.r),
          buttonText: 'Ok',
          color: AppColor.white,
          onPressed: () => Navigator.pop(context),
          buttonBorderColor: AppColor.primary,
          buttonColor: AppColor.primary,
        ),
      ],
    );
  }
}
