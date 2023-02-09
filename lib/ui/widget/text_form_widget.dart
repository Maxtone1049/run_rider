import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run/ui/widget/text_view_widget.dart';

import '../app_utils/color.dart';

class TextFormWidget extends StatelessWidget {
  final TextCapitalization? textCapitalization;
  final String? label;
  final String? floatingLabel;
  final String? hint;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? assets;
  final Widget? suffixWidget;
  final Widget? prefixWidget;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onPasswordToggle;
  final Function(String)? onChange;
  final String? initialValue;
  final String? text;
  List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final AutovalidateMode? autoValidateMode;
  final bool? obscureText;
  final bool? readOnly;
  final Function()? onTapped;

  final TextInputType? keyboardType;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final Key? formKey;
  final double? size;
  final int? maxline;
  final Color? fillcolor;
  final Color color1, color2, color3, color4;
  final BorderRadius radius;

  TextFormWidget({
    Key? key,
    this.assets,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
    required this.radius,
    this.fillcolor,
    this.maxline,
    this.textCapitalization,
    this.label,
    this.floatingLabel,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixWidget,
    this.prefixWidget,
    this.validator,
    this.onPasswordToggle,
    this.initialValue,
    this.inputFormatters,
    this.controller,
    this.autoValidateMode,
    this.obscureText = false,
    this.readOnly = false,
    this.onTapped,
    this.keyboardType,
    this.suffixIconColor,
    this.prefixIconColor,
    this.onChange,
    this.formKey,
    this.size,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextView(
          text: text ?? '',
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        SizedBox(
          height: 12.h,
        ),
        TextFormField(
          validator: validator,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              fillColor: fillcolor,
              filled: true,
              contentPadding: EdgeInsets.fromLTRB(10.h, 5.h, 10.h, 5.h),
              labelText: label ?? '',
              labelStyle: GoogleFonts.poppins(
                color: AppColor.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              border: OutlineInputBorder(
                borderRadius: radius,
                borderSide: BorderSide(
                  width: 1.w,
                  color: color1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: radius,
                borderSide: BorderSide(
                  width: 1.w,
                  color: color2,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: radius,
                borderSide: BorderSide(
                  width: 1.w,
                  color: color3,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: radius,
                borderSide: BorderSide(
                  width: 1.w,
                  color: color4,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: radius,
                borderSide: BorderSide(
                  width: 1.w,
                  color: AppColor.textgrey,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: radius,
                borderSide: BorderSide(
                  width: 1.w,
                  color: Colors.redAccent,
                ),
              ),
              prefixIcon: prefixWidget ??
                  (prefixIcon != null
                      ? IconButton(
                          onPressed: onPasswordToggle,
                          icon: Icon(
                            prefixIcon,
                            color: prefixIconColor,
                          ),
                        )
                      : null),
              suffixIcon: Padding(
                padding: EdgeInsets.all(1.5.w),
                child: suffixWidget ??
                    (suffixIcon != null
                        ? IconButton(
                            onPressed: onPasswordToggle,
                            iconSize: size,
                            icon: Icon(
                              suffixIcon,
                              color: suffixIconColor,
                            ))
                        : null),
              )),
          obscureText: obscureText!,
          controller: controller,
          readOnly: readOnly!,
          onTap: onTapped,
          key: formKey,
          maxLines: maxline,
          cursorColor: AppColor.primary,
          onChanged: onChange,
        ),
      ],
    );
  }
}
