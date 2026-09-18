import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class OurClientPageTextOne extends StatelessWidget {
  const OurClientPageTextOne({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        left: size.width*0.05,
      ),
      child: SizedBox(
        width: size.width * 0.8,
        child: Text(
          "We love to provide value, let’s hear it from our clients.",
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: size.width * 0.045,
              fontWeight: FontWeight.w500,
              color: AppColors.white),
        ),
      ),
    );
  }
}
