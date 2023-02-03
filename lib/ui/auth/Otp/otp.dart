import 'package:run/ui/app_utils/color.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:run/ui/auth/SignUp/sign_one.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
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
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35.h,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          size: 24.0,
                          Icons.arrow_back,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      flex: 3,
                      child: TextView(
                        text: 'Edit Phone Number',
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35.h,
                ),
                TextView(
                  text: 'Phone Number Verification',
                  color: AppColor.primary,
                  fontSize: 24.sp,
                  lineHeight: 18.sp,
                  maxLines: 3,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  height: 30.h,
                ),
                TextView(
                  text: 'Enter the OTP sent to your phone number',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  height: 19.h,
                ),
                SizedBox(
                  child: PinCodeTextField(
                    // controller: otpController,
                    backgroundColor: AppColor.white,
                    keyboardType: TextInputType.number,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    length: 4,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.underline,
                      borderWidth: 1,
                      fieldWidth: 70.w,
                      fieldHeight: 115.h,
                      activeFillColor: AppColor.primary,
                      inactiveColor: AppColor.primary,
                      inactiveFillColor: AppColor.white,
                    ),
                    // validator: AppValidator.validateOTP(),
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    onCompleted: (v) {},
                    onChanged: (value) {},
                    beforeTextPaste: (text) {
                      return true;
                    },
                    autoDisposeControllers: false,
                    appContext: context,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextView(
                      text: 'Resend OTP in: 40 Secs',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonWidget(
                          weight: FontWeight.w600,
                          width: 250.w,
                          radius: BorderRadius.circular(5.r),
                          buttonText: 'Continue',
                          color: AppColor.white,
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpHome(),
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
