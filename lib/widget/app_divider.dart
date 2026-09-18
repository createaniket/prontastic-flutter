import 'package:flutter/material.dart';
import 'package:prontastic/constants/app_colors.dart';

class AppDivider extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  const AppDivider({super.key,
    this.width = 2, required this.height, this.color = AppColors.bgColor,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(0.0),
          margin: EdgeInsets.all(0.0),
          height: height,
          width: width,
          color: color,
        ),
      
      ],
    );
  }
}