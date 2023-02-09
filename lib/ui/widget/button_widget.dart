import 'package:run/ui/widget/text_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.buttonText,
      this.width,
      this.height,
      required this.fontSize,
      this.color,
      this.buttonColor,
      this.isLight = true,
      this.buttonBorderColor,
      required this.radius,
      this.weight,
      this.onPressed});
  final String buttonText;
  final Color? color;
  final Color? buttonColor;
  final Color? buttonBorderColor;
  final bool? isLight;
  final Function()? onPressed;
  final BorderRadius radius;
  final double? width, height;
  final double fontSize;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: width, height: height),
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
        child: Center(
          child: TextView(
            text: buttonText,
            fontSize: fontSize,
            color: color,
            fontWeight: weight,
          ),
        ),
      ),
    );
  }
}
