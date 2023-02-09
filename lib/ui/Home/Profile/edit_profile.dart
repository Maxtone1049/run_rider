import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/text_form_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 30.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: TextView(
                        text: 'Cancel',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: TextView(
                        text: 'Done',
                        color: AppColor.primary,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35.h,
                ),
                TextView(
                  text: 'Edit Profile',
                  color: AppColor.primary,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
                TextView(
                  text:
                      'Please make sure that your details match that of your\npersonal documents.',
                  color: AppColor.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  height: 50.h,
                ),
                TextFormWidget(
                  color1: AppColor.textgrey,
                  color2: AppColor.textgrey,
                  color3: AppColor.textgrey,
                  color4: AppColor.textgrey,
                  text: 'First name*',
                  label: '',
                  radius: BorderRadius.circular(5.r),
                ),
                SizedBox(
                  height: 25.h,
                ),
                TextFormWidget(
                  color1: AppColor.textgrey,
                  color2: AppColor.textgrey,
                  color3: AppColor.textgrey,
                  color4: AppColor.textgrey,
                  text: 'Last name*',
                  label: '',
                  radius: BorderRadius.circular(5.r),
                ),
                SizedBox(
                  height: 25.h,
                ),
                TextFormWidget(
                  color1: AppColor.textgrey,
                  color2: AppColor.textgrey,
                  color3: AppColor.textgrey,
                  color4: AppColor.textgrey,
                  text: 'Phone Number',
                  label: '',
                  radius: BorderRadius.circular(5.r),
                ),
                SizedBox(
                  height: 15.h,
                ),
                RichText(
                  text: TextSpan(
                    text:
                        'Your phone number cannot be changed. If you want to link another\nphone number to this account, please',
                    style: GoogleFonts.poppins(
                      color: AppColor.black,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w300,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' contact our customer support',
                        style: GoogleFonts.poppins(
                          color: AppColor.primary,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
