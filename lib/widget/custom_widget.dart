import 'package:flutter/material.dart';
import 'package:prontastic/constants/app_colors.dart';
import 'package:prontastic/constants/app_images.dart';
import 'package:prontastic/widget/containe.dart';
import 'package:prontastic/widget/text_widget.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 225),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget(
              text:
                  "Check out our other projects",
              style: TextStyle(color: AppColors.bgColor, fontSize: 52.45)),
         
          const TextWidget(
              text:
                  "We navigate thia's next at the intersection of creativity and tech innovation.",
              style: TextStyle(color: AppColors.bgColor, fontSize: 19.94)),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 338.25,
                    height: 454.72,
                    child: Image.asset("assets/images/Nike_HP_pgdkzn.jpg.png"),
                  ),
               
                   const SizedBox(height: 10),
                  const TextWidget(
                      text: "Humain-first design.",
                      style: TextStyle(color: AppColors.bgColor, fontSize: 15)),
                  const TextWidget(
                    text:
                        'We design immersive experiences fueled by\ncreativity and innovation to drive brand\ndistinction\n',
                    style: TextStyle(color: AppColors.bgColor, fontSize: 10),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(
                    width: 338.25,
                    height: 454.72,
                    child: Image.asset(AppImages.redColorImage),
                  ),
                   const SizedBox(height: 10),
                  const TextWidget(
                      text: "Deep expertise in data & tech",
                      style: TextStyle(color: AppColors.bgColor, fontSize: 15)),
                  const TextWidget(
                    text:
                        "We harness our proprietary AI data platfor\n(LIVE)\nto develop data-driven strategies that deliver\nmeasurable outcomes for clients",
                    style: TextStyle(color: AppColors.bgColor, fontSize: 10),
                  )
                ],
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 338.25,
                    height: 454.72,
                    child: Image.asset("assets/images/NBCU_HP_tpzwgb.jpg.png"),
                  ),
                   const SizedBox(height: 10),
                  const TextWidget(
                      text: "Speed to business value",
                      style: TextStyle(color: AppColors.bgColor, fontSize: 15)),
                  const TextWidget(
                    text:
                        "We leverage AI tools that automate design and\ncoding processes to drive geater value,cohension\nand speed to market\n",
                    style: TextStyle(color: AppColors.bgColor, fontSize: 10),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 35),
          Row(
            children: [
              learnmorebtn()  ],
          ),
        ],
      ),
    );
  }
}
