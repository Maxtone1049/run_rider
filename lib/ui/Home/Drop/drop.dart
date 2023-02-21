import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run/ui/Home/Dashboard/Widget/bottom_sheet.dart';
import 'package:run/ui/app_utils/color.dart';
import 'package:run/ui/widget/button_widget.dart';
import 'package:run/ui/widget/text_view_widget.dart';
import 'Widget/form_widget_pick.dart';

class DropLocation extends StatefulWidget {
  const DropLocation({super.key});

  @override
  State<DropLocation> createState() => _DropLocationState();
}

class _DropLocationState extends State<DropLocation> {
  final Shader _linegrad = const LinearGradient(
    colors: [
      Color(0XFFC155BD),
      Color(0XFFCFA044),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.bottomRight,
  ).createShader(
    Rect.fromLTWH(
      0.0,
      0.0,
      320.h,
      80.h,
    ),
  );
  List<Widget> _cardList = [];

  void _addCardWidget() {
    setState(() {
      _cardList.add(_card());
    });
  }

  Widget _card() {
    return const FormWidget();
  }

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      backgroundColor: AppColor.textgrey,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColor.black,
          size: 18.0,
        ),
        title: TextView(
          text: 'Let\'s Run It',
          color: AppColor.black,
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 20.h,
        ),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FormWidget(),
            SizedBox(
              height: 15.h,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _cardList.length,
              itemBuilder: (context, index) {
                return _cardList[index];
              },
            ),
            SizedBox(
              height: 30.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: _addCardWidget,
                child: const Icon(
                  Icons.add_circle_outlined,
                  size: 60,
                  color: Color(0XFF545454),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(
                  fontSize: 16.sp,
                  height: 50.h,
                  weight: FontWeight.w600,
                  width: 250.w,
                  radius: BorderRadius.circular(10.r),
                  buttonText: 'Proceed',
                  color: AppColor.white,
                  onPressed: () {
                    Navigator.pop(context);
                    showModalBottomSheet(
                      backgroundColor: Colors.white,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10.r),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: BottomDetail(linegrad: _linegrad),
                        );
                      },
                    );
                  },
                  buttonBorderColor: AppColor.ticgey,
                  buttonColor: AppColor.ticgey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
