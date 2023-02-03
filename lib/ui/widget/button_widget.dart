import 'package:run/ui/widget/text_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      this.buttonText,
      this.width,
      this.color,
      this.buttonColor,
      this.isLight = true,
      this.buttonBorderColor,
      required this.radius,
      this.weight,
      this.onPressed});
  final String? buttonText;
  final Color? color;
  final Color? buttonColor;
  final Color? buttonBorderColor;
  final bool? isLight;
  final Function()? onPressed;
  final BorderRadius radius;
  final double? width;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: width, height: 80.h),
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
        child: TextView(
          text: buttonText!,
          fontSize: 16.sp,
          color: color,
          fontWeight: weight,
        ),
      ),
    );
  }
}
