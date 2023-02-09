import 'package:flutter/material.dart';
import 'package:run/ui/Home/About/about.dart';
import 'package:run/ui/Home/Dashboard/Widget/draw_button.dart';
import 'package:run/ui/Home/History/history.dart';
import 'package:run/ui/Home/Payment/payment.dart';
import 'package:run/ui/Home/Promotion/promo.dart';
import 'package:run/ui/Home/Support/support.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawButton(
          text: 'Payment',
          image: 'assets/image/pay.svg',
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Payment(),
              ),
            );
          },
        ),
        DrawButton(
          text: 'History',
          image: 'assets/image/history.svg',
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const History(),
              ),
            );
          },
        ),
        DrawButton(
          text: 'Promotion',
          image: 'assets/image/promote.svg',
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Promo(),
              ),
            );
          },
        ),
        DrawButton(
          text: 'Support',
          image: 'assets/image/support.svg',
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Support(),
              ),
            );
          },
        ),
        DrawButton(
          text: 'About',
          image: 'assets/image/about.svg',
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const About(),
              ),
            );
          },
        ),
      ],
    );
  }
}
