import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class MiniCopier extends StatelessWidget {
  const MiniCopier({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 15.h,
          ),
          decoration: const BoxDecoration(
            color: AppColor.black,
          ),
          child: TextView(
            text: 'Hello there',
          ),
        ),
      ],
    );
  }
}
