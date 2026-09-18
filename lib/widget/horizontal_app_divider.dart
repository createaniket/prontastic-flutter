import 'package:flutter/material.dart';
import 'package:prontastic/constants/app_colors.dart';

class HorizontalAppDriver extends StatelessWidget {
  final width;
  final height;
  final color;
  const HorizontalAppDriver({super.key, required this.width, this.height = 2, this.color = AppColors.bgColor});

  @override
  Widget build(BuildContext context) {
    return 
        Row(
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