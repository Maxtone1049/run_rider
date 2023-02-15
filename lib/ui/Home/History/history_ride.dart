import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/Home/History/Widget/history_card.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/text_view_widget.dart';

import 'Pages/ride_details.dart';

class HistoryRide extends StatelessWidget {
  const HistoryRide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColor.black,
        ),
        title: TextView(
          text: 'History',
          color: AppColor.black,
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          HistoryCard(
            pressed: () {},
            time: '15 mins',
            address: 'Road 36, Phase 3, Kubwa',
            img: 'assets/image/drop.svg',
            amount: '3,000',
          ),
          SizedBox(height: 5.h),
          HistoryCard(
            pressed: () {
              Navigator.pop(context);
              showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: AppColor.textgrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10.r),
                  ),
                ),
                context: context,
                builder: (context) {
                  return const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: RideDetails(),
                  );
                },
              );
            },
            time: '26, Feb 2023',
            address: 'From- Road 36, Phase 3, Kubwa',
            img: 'assets/image/drop.svg',
            amount: '3,000',
          ),
        ],
      ),
    );
  }
}
