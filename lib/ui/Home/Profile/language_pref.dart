import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class LanguagePref extends StatefulWidget {
  const LanguagePref({super.key});

  @override
  State<LanguagePref> createState() => _LanguagePrefState();
}

class _LanguagePrefState extends State<LanguagePref> {
  bool _value = false;
  int val = -1;
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
          horizontal: 20.h,
          vertical: 10.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextView(
              text: 'Language Preference',
              color: AppColor.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: 25.h,
            ),
            ListTile(
              title: TextView(text: 'UK English'),
              leading: Radio(
                value: "UK English",
                groupValue: "group value",
                onChanged: (value) {
                  print(value); //selected value
                },
              ),
            ),
            ListTile(
              title: TextView(text: 'US English'),
              leading: Radio(
                value: "US English",
                groupValue: "group value",
                onChanged: (value) {
                  print(value); //selected value
                },
              ),
            ),
            ListTile(
              title: TextView(text: 'Française'),
              leading: Radio(
                activeColor: AppColor.black,
                value: "Française",
                groupValue: "group value",
                onChanged: (value) {
                  print(value); //selected value
                },
              ),
            ),
            ListTile(
              title: TextView(text: 'Portugueses'),
              leading: Radio(
                value: "Portugueses",
                groupValue: "group value",
                onChanged: (value) {
                  print(value); //selected value
                },
              ),
            ),
            ListTile(
              title: TextView(text: 'UK English'),
              leading: Radio(
                value: "US English",
                groupValue: "group value",
                onChanged: (value) {
                  print(value); //selected value
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
