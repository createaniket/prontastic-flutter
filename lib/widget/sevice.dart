import 'package:flutter/material.dart';
import 'package:prontastic/constants/app_colors.dart';
import 'package:prontastic/widget/app_divider.dart';
import 'package:prontastic/widget/custom_text.dart';
import 'package:prontastic/widget/horizontal_app_divider.dart';

class service extends StatefulWidget {
  const service({super.key});

  @override
  State<service> createState() => _serviceState();
}

class _serviceState extends State<service> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(left: 138),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    AppDivider(height: size.height*0.85),
                    Icon(
                      Icons.arrow_downward,
                      color: AppColors.bgColor,
                      size: size.width*0.05,
                    ),
                  ],
                ),
              ],
            ),
            HorizontalAppDriver(width: 200),
            Icon(
              Icons.arrow_forward,
              color: AppColors.bgColor,
              size: 32,
            ),
            CustomText(),
          ],
        ),
      ]),
    );
  }
}
