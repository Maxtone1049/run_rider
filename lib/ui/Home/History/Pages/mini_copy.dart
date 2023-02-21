import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class MiniCopier extends StatelessWidget {
  const MiniCopier({super.key});

  @override
  Widget build(BuildContext context) {
    const String inner = 'GX123';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {},
          child: Material(
            elevation: 10,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 20.h,
              ),
              decoration: const BoxDecoration(
                color: AppColor.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 0,
                    child: SvgPicture.asset(
                      'assets/image/phone.svg',
                      width: 17.w,
                      height: 18.h,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Expanded(
                    flex: 1,
                    child: TextView(
                      text: 'Call Desmond',
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: const Color(0xFF8F8F8F),
                    ),
                  ),
                  const Expanded(
                    flex: 0,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 15.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextView(
                text: 'Your Delivery Code',
                color: AppColor.primary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 7.h,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0XFFFEEBCF),
                        borderRadius: BorderRadius.circular(
                          10.r,
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          Clipboard.setData(
                            const ClipboardData(text: inner),
                          ).then(
                            (value) {
                              return ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: AppColor.primary,
                                  content: TextView(
                                    text: 'Text Copied',
                                    color: AppColor.white,
                                    fontSize: 19.sp,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              flex: 0,
                              child: TextView(
                                letterSpacing: 4,
                                text: inner,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Expanded(
                              flex: 0,
                              child: Icon(
                                Icons.copy_all,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    flex: 2,
                    child: TextView(
                      text:
                          'Share this code with this receiver in this\nlocation to confirm delivery',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w300,
                      color: const Color(0XFF4D4D4D),
                    ),
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
    );
  }
}
