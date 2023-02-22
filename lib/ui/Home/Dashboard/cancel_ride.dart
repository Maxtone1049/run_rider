import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:run/ui/Home/History/Pages/ride_details.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class CancelRide extends StatelessWidget {
  const CancelRide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        leading: SizedBox(
          width: 8.w,
          height: 8.h,
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Image.asset(
              'assets/image/cac.png',
            ),
          ),
        ),
        iconTheme: const IconThemeData(
          color: AppColor.black,
          size: 18.0,
        ),
        centerTitle: true,
        title: TextView(
          text: 'Cancel Trip',
          color: AppColor.black,
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 20.h,
        ),
        child: Column(
          children: [
            const CancelWidget(
              col: AppColor.primary,
              ico: Icons.radio_button_checked_sharp,
              reason: 'Rider isn\'t here',
            ),
            const CancelWidget(
              col: Colors.black,
              ico: Icons.radio_button_checked_sharp,
              reason: 'Wrong address shown',
            ),
            const CancelWidget(
              col: Colors.black,
              ico: Icons.radio_button_checked_sharp,
              reason: 'Don\'t charge rider',
            ),
            const CancelWidget(
              col: Colors.black,
              ico: Icons.radio_button_checked_sharp,
              reason: 'Don\'t charge rider',
            ),
            const CancelWidget(
              col: Colors.black,
              ico: Icons.radio_button_checked_sharp,
              reason: 'Don\'t charge rider',
            ),
            const CancelWidget(
              col: Colors.black,
              ico: Icons.radio_button_checked_sharp,
              reason: 'Don\'t charge rider',
            ),
            const Divider(),
            SizedBox(
              height: 80.h,
            ),
            Align(
              alignment: Alignment.center,
              child: ButtonWidget(
                fontSize: 16.sp,
                height: 50.h,
                weight: FontWeight.w600,
                width: 250.w,
                radius: BorderRadius.circular(10.r),
                buttonText: 'DONE',
                color: AppColor.white,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                        10.r,
                      )),
                      title: Center(
                          child: TextView(
                        text: 'Are you sure\nyou want to cancel ?',
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.center,
                      )),
                      content: Builder(builder: (context) {
                        return Container(
                          width: 379.w,
                          decoration: const BoxDecoration(
                            color: AppColor.white,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextView(
                                text:
                                    'It might take longer next time\nif you cancel.',
                                textAlign: TextAlign.center,
                                fontSize: 14.sp,
                                color: const Color(0XFF747474),
                                fontWeight: FontWeight.w400,
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    flex: 0,
                                    child: ButtonWidget(
                                      fontSize: 16.sp,
                                      height: 50.h,
                                      weight: FontWeight.w600,
                                      width: 114.w,
                                      radius: BorderRadius.circular(50.r),
                                      buttonText: 'No',
                                      color: AppColor.primary,
                                      onPressed: () => Navigator.pop(ctx),
                                      buttonBorderColor: AppColor.primary,
                                      buttonColor: AppColor.white,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 0,
                                    child: ButtonWidget(
                                      fontSize: 16.sp,
                                      height: 50.h,
                                      weight: FontWeight.w600,
                                      width: 114.w,
                                      radius: BorderRadius.circular(50.r),
                                      buttonText: 'Yes',
                                      color: AppColor.white,
                                      onPressed: () {
                                        Navigator.pop(ctx);
                                        Navigator.pop(ctx);
                                        Navigator.pop(ctx);
                                      },
                                      buttonBorderColor: AppColor.red,
                                      buttonColor: AppColor.red,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  );
                },
                buttonBorderColor: AppColor.primary,
                buttonColor: AppColor.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CancelWidget extends StatelessWidget {
  const CancelWidget({
    required this.reason,
    required this.col,
    required this.ico,
    super.key,
  });
  final String reason;
  final IconData ico;
  final Color col;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15.h,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 0,
            child: Icon(
              ico,
              color: col,
              size: 15.sp,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            flex: 0,
            child: TextView(
              text: reason,
              color: const Color(0XFF7F7F7F),
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
