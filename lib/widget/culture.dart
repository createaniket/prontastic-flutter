import 'package:flutter/material.dart';
import 'package:prontastic/constants/app_colors.dart';
import 'package:prontastic/widget/text_widget.dart';

class Culture extends StatelessWidget {
  const Culture({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 600,
            height: 900,
            child: Image.asset("assets/images/image 46.png"),
          ),
          const SizedBox(width: 80),
          const Padding(
            padding: EdgeInsets.only(bottom: 100.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: 'Culture',
                  style: TextStyle(
                    color: AppColors.bgColor,
                    fontSize: 53.47,
                  ),
                ),
                SizedBox(height: 20),
                TextWidget(
                  text:
                      "At Prontastic,our culture is built on\ninnovation,collaboration,and growth.\nWe believe in fostering a supportive and\ninclusive environment where every voice is\nvalued and ideas are encouraged.Our team\nthrives on creativity and curiosity, always\npushing the boundaries of technology to\ndeliver exceptional solutions.Continuous\nlearning and development are at the core\nof what we do, empowering our people to\ngrow both personally and professionally.At\nProntastic,we're mot just building solutions\n-we're building a community that inspires\nexcellence and drives meaningful impact\nfor our clients",
                  style: TextStyle(color: AppColors.bgColor, fontSize: 23),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
