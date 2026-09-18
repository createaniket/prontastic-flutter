import 'package:flutter/material.dart';
import 'package:prontastic/constants/app_colors.dart';
import 'package:prontastic/constants/app_images.dart';
import 'package:prontastic/widget/horizontal_app_divider.dart';
import 'package:prontastic/widget/text_widget.dart';

class Containe extends StatelessWidget {
  const Containe({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HorizontalAppDriver(width: 860),
          const SizedBox(height: 25),
          Row(
            children: [
              const TextWidget(
                  text: "PMS",
                  style: TextStyle(color: AppColors.bgColor, fontSize: 40)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.030,
              ),
              SizedBox(
                width: size.width * 0.3,
                child: TextWidget(
                    text: "Indian Railway Parcel Management System (CRIS PMS)",
                    style: TextStyle(color: AppColors.bgColor, fontSize: 15)),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              const TextWidget(
                  text: "100%",
                  style: TextStyle(color: AppColors.bgColor, fontSize: 15)),
              SizedBox(
                width: size.width * 0.02,
              ),
              SizedBox(
                width: size.width * 0.3,
                child: const TextWidget(
                    text:
                        "Successful execution of Digitization of Parcel Management System Phase II for 168 Railway stations PAN India including application, services and supply of various relevant IT equipments such as Thinclient, Printers, Electronic Weighment Machines etc.",
                    style: TextStyle(color: AppColors.bgColor, fontSize: 15)),
              ),
            ],
          ),
          const SizedBox(height: 25),
          SizedBox(
            height: 600,
            width: 860,
            child: Image.asset(AppImages.dogCatPMS, fit: BoxFit.contain),
          ),
          const SizedBox(height: 15),
          Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(
                    text: "Parcel Management System",
                    style: TextStyle(color: AppColors.bgColor, fontSize: 35)),
                SizedBox(
                  width: size.width * 0.6,
                  child: const TextWidget(
                    text:
                        "Successful execution of Digitization of Parcel Management System Phase II for 168 Railway stations PAN India including application, services and supply of various relevant IT equipments such as Thinclient, Printers, Electronic Weighment Machines etc.",
                    style: TextStyle(color: AppColors.bgColor, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                learnmorebtn()
              ],
            )
          ]),
        ],
      ),
    );
  }
}

class learnmorebtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0XFF9DFF50),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(
              color: Color(0XFF9DFF50),
              width: 1,
            ),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Learn more",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.arrow_right_alt,
                size: 24,
                color: AppColors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
