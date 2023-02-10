// import 'package:run/ui/app_utils/color.dart';
import 'package:flutter/material.dart';

SizedBox buildMyNavBar(BuildContext context) {
  int pageIndex = 0;
  return SizedBox(
    height: 60,
    // color: AppColor.fein,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          enableFeedback: false,
          onPressed: () {},
          icon: pageIndex == 0
              ? const Icon(
                  Icons.home_filled,
                  color: Colors.black,
                  size: 15,
                )
              : const Icon(
                  Icons.home_outlined,
                  color: Color(0xFFBBBFD0),
                  size: 15,
                ),
        ),
        IconButton(
          enableFeedback: false,
          onPressed: () {},
          icon: pageIndex == 1
              ? const Icon(
                  Icons.bookmark_outline,
                  color: Color(0xFFBBBFD0),
                  size: 15,
                )
              : const Icon(
                  Icons.bookmark_outline,
                  color: Color(0xFFBBBFD0),
                  size: 15,
                ),
        ),
        IconButton(
          enableFeedback: false,
          onPressed: () {},
          icon: pageIndex == 2
              ? const Icon(
                  Icons.send_outlined,
                  color: Color(0xFFBBBFD0),
                  size: 15,
                )
              : const Icon(
                  Icons.send_outlined,
                  color: Color(0xFFBBBFD0),
                  size: 15,
                ),
        ),
        IconButton(
          enableFeedback: false,
          onPressed: () {},
          icon: pageIndex == 3
              ? const Icon(
                  Icons.settings_outlined,
                  color: Color(0XFFBBBFD0),
                  size: 15,
                )
              : const Icon(
                  Icons.settings_outlined,
                  color: Color(0XFFBBBFD0),
                  size: 15,
                ),
        ),
      ],
    ),
  );
}
