import 'package:google_fonts/google_fonts.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfield extends StatelessWidget {
  final bool obscureText;
  final String? hintText;
  final TextEditingController? controller;
  final IconData? input;
  final BorderRadius radius;
  final int? maxline;
  final double? width, height;

  const CustomTextfield({
    Key? key,
    this.width,
    this.height,
    required this.obscureText,
    this.hintText,
    required this.radius,
    this.maxline,
    this.controller,
    this.input,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: width, height: height),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        style: GoogleFonts.poppins(
          color: AppColor.black,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(10.h, 5.h, 10.h, 5.h),
          fillColor: AppColor.textgrey,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: AppColor.textgrey),
            borderRadius: radius,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: AppColor.textgrey),
            borderRadius: radius,
          ),
          hintText: hintText,
        ),
        maxLines: maxline,
        cursorColor: Colors.black.withOpacity(.5),
      ),
    );
  }
}
