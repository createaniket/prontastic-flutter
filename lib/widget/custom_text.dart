import 'package:flutter/material.dart';
import 'package:prontastic/constants/app_colors.dart';
import 'package:prontastic/widget/app_divider.dart';
import 'package:prontastic/widget/containe.dart';
import 'package:prontastic/widget/horizontal_app_divider.dart';
import 'package:prontastic/widget/text_widget.dart';

import '../constants/app_images.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TextWidget(
                text: "SwaRail",
                style: TextStyle(color: AppColors.bgColor, fontSize: 40)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.025,
            ),
            SizedBox(
              width: size.width * 0.3,
              child: const TextWidget(
                  text:
                      "Reinventing Indian Railways SuperApp 'SwaRail' to consolidate various railway services into a single platform.",
                  style: TextStyle(color: AppColors.bgColor, fontSize: 15)),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.04,
            ),
            const TextWidget(
                text: "40%",
                style: TextStyle(color: AppColors.bgColor, fontSize: 15)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.025,
            ),
            SizedBox(
              width: size.width * 0.2,
              child: const TextWidget(
                text:
                    "Integrates Multiple Railway Services, Reduces App Clutter and Space Usage.",
                style: TextStyle(color: AppColors.bgColor, fontSize: 15),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Image.asset(
          AppImages.superApp,
          width: size.width * 0.7,
        ),
        // Row(children: [
        //   const AppDivider(height: 400),
        //   Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //     Container(
        //       height: 250,
        //       width: 300,
        //       decoration: BoxDecoration(
        //         gradient: const LinearGradient(
        //           colors: [
        //             AppColors.hotblue,
        //             AppColors.limeGreen,
        //           ],
        //           begin: Alignment.topLeft,
        //           end: Alignment.bottomRight,
        //         ),
        //         border: Border.all(),
        //       ),
        //     ),
        //     const HorizontalAppDriver(width: 300),
        //     Container(
        //       height: 150,
        //       width: 300,
        //       decoration: const BoxDecoration(),
        //       child: Padding(
        //         padding: const EdgeInsets.only(left: 10),
        //         child: TextWidget(
        //           text: 'Intelligent\nExperience',
        //           style: TextStyle(
        //             fontSize: 50,
        //             foreground: Paint()
        //               ..shader = const LinearGradient(
        //                 colors: <Color>[
        //                   AppColors.lightPink,
        //                   Color.fromARGB(255, 86, 76, 175)
        //                 ],
        //               ).createShader(Rect.fromLTWH(50.0, 90.0, 200.0, 70.0)),
        //           ),
        //         ),
        //       ),
        //     )
        //   ]),
        //   const AppDivider(height: 400),
        //   const SizedBox(width: 15),
        //   const AppDivider(height: 400),
        //   Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Container(
        //         height: 100,
        //         width: 250,
        //         decoration: const BoxDecoration(
        //             gradient: LinearGradient(colors: [
        //           AppColors.lightPink,
        //           AppColors.limeGreen,
        //         ])),
        //       ),
        //       const HorizontalAppDriver(width: 250),
        //       Container(
        //           height: 300,
        //           child: Padding(
        //             padding: const EdgeInsets.only(left: 10),
        //             child: TextWidget(
        //               text: 'IX',
        //               style: TextStyle(
        //                 fontSize: 60,
        //                 foreground: Paint()
        //                   ..shader = const LinearGradient(
        //                     colors: <Color>[
        //                       AppColors.lightPink,
        //                       Color.fromARGB(255, 86, 76, 175)
        //                     ],
        //                   ).createShader(
        //                       Rect.fromLTWH(50.0, 90.0, 200.0, 70.0)),
        //               ),
        //             ),
        //           ))
        //     ],
        //   ),
        //   const AppDivider(height: 400),
        //   const SizedBox(width: 15),
        //   const AppDivider(height: 400),
        //   Column(
        //     children: [
        //       Container(
        //         height: 133.3,
        //         width: 200,
        //         decoration: const BoxDecoration(
        //           gradient: LinearGradient(colors: [
        //             AppColors.lightPink,
        //             AppColors.hotblue,
        //           ]),
        //         ),
        //       ),
        //       const HorizontalAppDriver(width: 200),
        //       Container(
        //         height: 133.3,
        //         width: 200,
        //         decoration: const BoxDecoration(
        //           gradient: LinearGradient(colors: [
        //             AppColors.lightPink,
        //             AppColors.limeGreen,
        //           ]),
        //         ),
        //       ),
        //       const HorizontalAppDriver(width: 200),
        //       Container(
        //         height: 133.3,
        //         width: 200,
        //         decoration: const BoxDecoration(
        //           gradient: LinearGradient(colors: [
        //             AppColors.amber,
        //             AppColors.hotblue,
        //           ]),
        //         ),
        //       )
        //     ],
        //   ),
        //   const AppDivider(height: 400),
        // ]),
        const SizedBox(height: 10),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                    text: "Indian Railway SuperApp",
                    style: TextStyle(color: AppColors.bgColor, fontSize: 25)),
                const TextWidget(
                  text: "Future of Railway Ticketing And Reservation System",
                  style: TextStyle(color: AppColors.bgColor, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                learnmorebtn()
              ],
            )
          ],
        )
      ],
    );
  }
}
