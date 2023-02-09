import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/input_field.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class CommPref extends StatefulWidget {
  const CommPref({super.key});

  @override
  State<CommPref> createState() => _CommPrefState();
}

class _CommPrefState extends State<CommPref> {
  bool isSwitched = false;
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColor.black,
          size: 18.0,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: TextView(
                text: 'Cancel',
                color: AppColor.black,
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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25.h,
          vertical: 10.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextView(
              text: 'Communication Preference',
              color: AppColor.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextView(
                  text: 'Email',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: isSwitched,
                    onChanged: (value) => setState(() => isSwitched = value),
                    activeColor: AppColor.primary,
                    thumbColor: AppColor.white,
                    trackColor: AppColor.ticgey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextView(
                  text: 'Notifications',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: isSwitch,
                    onChanged: (value) => setState(() => isSwitch = value),
                    activeColor: AppColor.primary,
                    trackColor: AppColor.ticgey,
                    thumbColor: AppColor.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
            TextView(
              text: 'Subscribe To Our\nNewsletter',
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0XFF7F7F7F),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextView(
              text:
                  'Stay with us through our journey and get the\nlatest news about our products and services.',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColor.black,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: CustomTextfield(
                    width: 321.w,
                    height: 55.h,
                    radius: BorderRadius.circular(12.r),
                    obscureText: false,
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: ButtonWidget(
                    fontSize: 16.sp,
                    height: 50.h,
                    weight: FontWeight.w600,
                    width: 113.w,
                    radius: BorderRadius.circular(12.r),
                    buttonText: 'Subscribe',
                    color: AppColor.white,
                    onPressed: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10.0),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 30.h,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextView(
                                    text: 'Submission Successful',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24.sp,
                                    color: AppColor.primary,
                                  ),
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  TextView(
                                    text:
                                        'You will be notified when your profile\ninfomation has been updated',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: AppColor.black,
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  ButtonWidget(
                                    weight: FontWeight.w700,
                                    width: 299.w,
                                    height: 55.h,
                                    fontSize: 16.sp,
                                    radius: BorderRadius.circular(10.r),
                                    buttonText: 'PROCEED',
                                    color: AppColor.white,
                                    onPressed: () => Navigator.pop(context),
                                    buttonBorderColor: AppColor.primary,
                                    buttonColor: AppColor.primary,
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    buttonBorderColor: AppColor.primary,
                    buttonColor: AppColor.primary,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100.h,
            ),
          ],
        ),
      ),
    );
  }
}
