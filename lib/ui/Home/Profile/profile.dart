import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';

import 'Widget/action_button.dart';
import 'Widget/profile_widget.dart';
import 'comms_pref.dart';
import 'edit_profile.dart';
import 'language_pref.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.textgrey,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColor.black,
          size: 18,
        ),
        title: TextView(
          text: 'Profile',
          color: AppColor.black,
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColor.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 20.h,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonWidget(
                          weight: FontWeight.w500,
                          width: 119.w,
                          height: 49.h,
                          fontSize: 14.sp,
                          radius: BorderRadius.circular(12.r),
                          buttonText: 'Edit Profile',
                          color: AppColor.primary,
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EditProfile(),
                              ),
                            );
                          },
                          buttonBorderColor:
                              AppColor.lightgren.withOpacity(0.3),
                          buttonColor: AppColor.lightgren.withOpacity(0.3),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 0,
                          child: Image.asset(
                            'assets/image/blank.png',
                            height: 100.h,
                            width: 100.w,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextView(
                                text: 'James Smith',
                                fontSize: 20.sp,
                                color: AppColor.black,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              TextView(
                                text: '+234 803 444 7766',
                                fontSize: 14.sp,
                                color: AppColor.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.h,
                        vertical: 15.h,
                      ),
                      decoration: BoxDecoration(
                          color: AppColor.brown.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(
                            width: 1.0,
                            color: AppColor.brownthick,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextView(
                            text: '500 Deliveries',
                            fontSize: 14.sp,
                            color: AppColor.brownthick,
                            fontWeight: FontWeight.w600,
                          ),
                          TextView(
                            text: 'Gold',
                            fontSize: 14.sp,
                            color: AppColor.brownthick,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 0,
                          child: SvgPicture.asset(
                            'assets/image/mail.svg',
                            width: 26.w,
                            height: 18.h,
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Expanded(
                          flex: 1,
                          child: TextView(
                            text: 'david.o.erasmus@gmail.com',
                            fontSize: 14.sp,
                            color: AppColor.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: ButtonWidget(
                            weight: FontWeight.w600,
                            width: 100.w,
                            height: 49.h,
                            fontSize: 14.sp,
                            radius: BorderRadius.circular(12.r),
                            buttonText: 'Verify',
                            color: AppColor.black,
                            onPressed: () {},
                            buttonBorderColor: AppColor.shade,
                            buttonColor: AppColor.shade,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            ProfileWidget(
              prefs: 'Communication Preferences',
              tapped: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CommPref(),
                ),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            Container(
              // height: double.infinity,
              decoration: const BoxDecoration(
                color: AppColor.white,
              ),
              child: Column(
                children: [
                  ProfileWidget(
                    prefs: 'Language Preferences',
                    tapped: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LanguagePref(),
                      ),
                    ),
                  ),
                  ActionButton(
                      press: () {},
                      asset: 'assets/image/out.svg',
                      action: 'Log Out'),
                  ActionButton(
                      press: () {},
                      asset: 'assets/image/del.svg',
                      action: 'Delete'),
                  SizedBox(
                    height: 150.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonWidget(
                        weight: FontWeight.w600,
                        width: 300.w,
                        height: 55.h,
                        fontSize: 16.sp,
                        radius: BorderRadius.circular(10.r),
                        buttonText: 'Earn Extra Credit with Run',
                        color: AppColor.white,
                        onPressed: () {},
                        buttonBorderColor: AppColor.primary,
                        buttonColor: AppColor.primary,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
