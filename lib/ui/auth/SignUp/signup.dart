import 'package:google_fonts/google_fonts.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/auth/Otp/otp.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/input_field.dart';
import 'package:run/ui/widget/text_form_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 90.h),
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/bgapp.png'),
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.w),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                  text: 'Please enter your number',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextView(
                  text: 'We will send you an OTP code for\nverification.',
                  fontSize: 12.sp,
                  lineHeight: 18.sp,
                  maxLines: 3,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 30.h,
                ),
                TextView(
                  text: 'Phone Number*',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.h,
                          vertical: 1.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.textgrey,
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(
                            width: 1.w,
                            color: AppColor.primary,
                          ),
                        ),
                        child: DropdownButton(
                          isExpanded: true,
                          items: [
                            DropdownMenuItem(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/image/nig.png',
                                    width: 21.w,
                                    height: 15.h,
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  TextView(
                                    text: '+234',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                          onChanged: (value) {},
                          icon: null,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.h,
                          vertical: 1.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.textgrey,
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(
                            width: 1.w,
                            color: AppColor.primary,
                          ),
                        ),
                        child: CustomTextfield(
                          width: 266.w,
                          height: 50.h,
                          radius: BorderRadius.circular(5.r),
                          hintText: '803 322 3892',
                          obscureText: false,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'By pressing continue, you agree to our',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 9.sp,
                          color: AppColor.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Terms And Condition',
                            style: GoogleFonts.poppins(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.primary),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonWidget(
                          fontSize: 17.sp,
                          height: 55.h,
                          width: 250.w,
                          weight: FontWeight.w600,
                          radius: BorderRadius.circular(5.r),
                          buttonText: 'Continue',
                          color: AppColor.white,
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Otp(),
                            ),
                          ),
                          buttonBorderColor: AppColor.primary,
                          buttonColor: AppColor.primary,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
