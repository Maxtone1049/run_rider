import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:run/ui/Home/History/Widget/history_card.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/text_view_widget.dart';

class History extends StatelessWidget {
  const History({super.key});

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
          const HistoryCard(
            time: '15 mins',
            address: 'Road 36, Phase 3, Kubwa',
            img: 'assets/image/drop.svg',
            amount: '3,000',
          ),
          SizedBox(height: 5.h),
          const HistoryCard(
            time: '15 mins',
            address: 'Road 36, Phase 3, Gwarinpa',
            img: 'assets/image/drop.svg',
            amount: '3,000',
          ),
        ],
      ),
    );
  }
}
