import 'package:run/ui/widget/text_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonIconWidget extends StatelessWidget {
  const ButtonIconWidget(
      {super.key,
      this.buttonText,
      this.color,
      this.buttonColor,
      this.isLight = true,
      this.buttonBorderColor,
      this.width,
      required this.radius,
      required this.img,
      this.onPressed});
  final String? buttonText;
  final Color? color;
  final BorderRadius radius;
  final Color? buttonColor;
  final Color? buttonBorderColor;
  final bool? isLight;
  final Function()? onPressed;
  final String img;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: width, height: 55.h),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor!),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: radius,
              side: BorderSide(
                color: buttonBorderColor!,
                width: 1.w,
              ),
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Image.asset(
                  img,
                  height: 40.h,
                  width: 40.w,
                ),
              ),
              // SizedBox(
              //   width: 5.w,
              // ),
              Expanded(
                flex: 2,
                child: TextView(
                  text: buttonText!,
                  fontSize: 16.sp,
                  color: color,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
