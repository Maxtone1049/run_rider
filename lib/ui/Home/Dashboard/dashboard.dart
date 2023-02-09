import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run/ui/Home/Drop/drop.dart';
import 'package:run/ui/Home/History/history.dart';
import 'package:run/ui/Home/Profile/edit_profile.dart';
import 'package:run/ui/Home/Profile/profile.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';

import 'Widget/drawer_menu.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 8.h,
          ),
          child: Card(
            elevation: 0,
            color: AppColor.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.menu_outlined,
                size: 20,
                color: AppColor.black,
              ),
              onPressed: () {
                if (scaffoldKey.currentState!.isDrawerOpen) {
                  scaffoldKey.currentState!.closeDrawer();
                } else {
                  scaffoldKey.currentState!.openDrawer();
                }
              },
            ),
          ),
        ),
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: AppColor.white,
        width: 311.w,
        child: ListView(
          children: [
            SizedBox(
              child: Container(
                height: 198.h,
                decoration: const BoxDecoration(
                  color: AppColor.primary,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 0,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Profile(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/image/user.png',
                          height: 97.h,
                          width: 97.w,
                        ),
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
                            fontSize: 16.sp,
                            color: AppColor.white,
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const EditProfile(),
                                ),
                              );
                            },
                            child: TextView(
                              text: 'Edit Profile',
                              fontSize: 14.sp,
                              color: AppColor.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: const DrawerMenu(),
            ),
            SizedBox(
              height: 60.h,
            ),
            Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Want to',
                    style: GoogleFonts.poppins(
                      color: AppColor.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Earn More Money?',
                        style: GoogleFonts.poppins(
                          color: AppColor.primary,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ButtonWidget(
                  weight: FontWeight.w700,
                  width: 200.w,
                  height: 55.h,
                  fontSize: 16.sp,
                  radius: BorderRadius.circular(10.r),
                  buttonText: 'Become a rider',
                  color: AppColor.white,
                  onPressed: () {},
                  buttonBorderColor: AppColor.primary,
                  buttonColor: AppColor.primary,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/back.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const History(),
                      ),
                    ),
                    child: Image.asset(
                      'assets/image/notify.png',
                      width: 51.w,
                      height: 56.h,
                    ),
                  ),
                ],
              ),
            ),
            TextView(
              text: 'Drop Location',
              fontSize: 24.sp,
              color: AppColor.primary,
              fontWeight: FontWeight.w600,
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DropLocation(),
                ),
              ),
              child: Image.asset(
                'assets/image/search.png',
                width: 103.w,
                height: 112.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
