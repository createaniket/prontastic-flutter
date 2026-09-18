import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prontastic/constants/app_colors.dart';
import 'package:prontastic/constants/app_images.dart';
import 'package:prontastic/themes/custom_text_theme.dart';
import 'package:prontastic/widget/app_divider.dart';
import 'package:prontastic/widget/projectimages_section_inaboutpage.dart';

import 'package:prontastic/widget/footer.dart';
import 'package:prontastic/widget/profilecard.dart';
import 'package:prontastic/widget/text_widget.dart';
import 'mobile_view_form.dart';

class AboutusPage extends StatefulWidget {
  const AboutusPage({super.key});

  @override
  State<AboutusPage> createState() => _AboutusPageState();
}

class _AboutusPageState extends State<AboutusPage> {

  final List<String> titles = [
    "Innovation-Driven",
    "Client-Centric",
    "Excellence in Service",
    "Sustainable Growth",
    "Collaboration & Integrity",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isMobile = size.width < 600;

    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: isMobile
              ? Column(
                  children: [
                    Image.asset(
                      AppImages.aboutuspagefirstimg,
                      width: size.width * 1,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      padding:
                          const EdgeInsets.only(top: 20, left: 30, bottom: 10),
                      child: SizedBox(
                        width: size.width * 0.6,
                        child: TextWidget(
                          text:
                              "Prontastic is a company of innovation.As technology advances,we harness it to empower businesses.We help our clients grow, adapt, and thrive.",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: size.width * 0.022,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 5,
                        right: 20,
                      ),
                      alignment: AlignmentDirectional.topEnd,
                      child: Column(
                        children: [
                          SizedBox(
                            width: size.width * 0.6,
                            child: TextWidget(
                              text:
                                  "Prontastic partners with forward-thinking businesses to harness technology and innovation, shaping solutions that enhance the human experience.",
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: size.width * 0.020,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: size.width * 0.6,
                            child: TextWidget(
                              text:
                                  "We craft meaningful connections between people and brands, building trust and loyalty. Our expertise spans IT consulting, cloud solutions, security services, and software development, ensuring every touchpoint adds value to the customer journey.",
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.020,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: size.width * 0.6,
                            child: TextWidget(
                              text:
                                  "From strategy to execution, we design systems that empower businesses, drive growth, and create lasting relationships—helping brands thrive in a constantly evolving digital world.",
                              style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: size.width * 0.020,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      width: size.width * 0.4,
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.03,
                          vertical: size.height * 0.01),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48),
                          border: Border.all(color: AppColors.white)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextWidget(
                            text: "Get in touch",
                            style: context.displayMedium.copyWith(
                                fontStyle: FontStyle.italic, fontSize: 12),
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          Image.asset(
                            AppImages.arrow,
                            width: 10,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    SizedBox(
                      height: 100,
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              AppColors.black,
                              AppColors.limeGreen,
                              AppColors.deepJungleGreen,
                              AppColors.black,
                            ],
                            stops: [0.0, 0.3, 0.7, 1.0],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Meet our ',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'talented',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                          color: Colors.lime,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\nteam ',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                          color: Colors.lime,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'of creators',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\nand ',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'technologists.',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Center(
                              child: Text(
                                'Our team is a dynamic blend of business leaders, technologists, \nstrategists, and innovators driving impactful change.\nWith decades of expertise across IT, branding, and operations, \nwe’ve helped businesses—from startups to enterprises—seize \nopportunities, solve challenges, and achieve sustainable \ngrowth. Together, we’re committed to shaping a future where \ntechnology and innovation create meaningful value for our \nclients and their customers.',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.013,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /*Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      AppImages.aboutUsFemale,
                                      fit: BoxFit.cover,
                                      width: MediaQuery.of(context).size.width *
                                          0.43,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01),
                                  TextWidget(
                                    text: "Nishant Kumar",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.02,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.005),
                                  TextWidget(
                                    text: "Director",
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.02,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      AppImages.aboutUsMale,
                                      fit: BoxFit.cover,
                                      width: MediaQuery.of(context).size.width *
                                          0.43,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01),
                                  TextWidget(
                                    text: "Prashant Kumar",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.02,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.005),
                                  TextWidget(
                                    text: "Director - Technology Business",
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.02,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      AppImages.aboutUsFemale,
                                      fit: BoxFit.cover,
                                      width: MediaQuery.of(context).size.width *
                                          0.43,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01),
                                  TextWidget(
                                    text: "Pooja Singh",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.02,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.005),
                                  TextWidget(
                                    text: "Director – Brand & Marketing",
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.02,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      AppImages.aboutUsMale,
                                      fit: BoxFit.cover,
                                      width: MediaQuery.of(context).size.width *
                                          0.43,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01),
                                  TextWidget(
                                    text: "Pragya Chaubey",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.02,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.005),
                                  TextWidget(
                                    text: "Technical Team Lead",
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.02,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          */TextWidget(
                            text: "Think you'd be a good addition to our team?",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: size.width * 0.03,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Container(
                            width: size.width * 0.16,
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.02),
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.limeGreen),
                                borderRadius: BorderRadius.circular(48),
                                color: AppColors.limeGreen),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Careers",
                                  style: context.displayMedium.copyWith(
                                      fontSize: size.width * 0.02,
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  size: 10,
                                  color: AppColors.black,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: AppDivider(
                        height: 1,
                        width: size.width,
                        color: AppColors.limeGreen.withOpacity(0.6),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "OUR VALUES",
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.035,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05),
                                  SizedBox(
                                    width: size.width * 0.3,
                                    child: RichText(
                                      textAlign: TextAlign.start,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Our ',
                                            style: TextStyle(
                                              fontSize: size.width * 0.03,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'values',
                                            style: TextStyle(
                                              fontSize: size.width * 0.03,
                                              color: Colors.lime,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'are part of ',
                                            style: TextStyle(
                                              fontSize: size.width * 0.03,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'everything ',
                                            style: TextStyle(
                                              fontSize: size.width * 0.03,
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'we do.  ',
                                            style: TextStyle(
                                              fontSize: size.width * 0.03,
                                              color: Colors.lime,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1,
                              ),
                              SizedBox(
                                width: size.width * 0.5,
                                child: Column(
                                  children: titles.map((title) {
                                    return Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            title,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: size.width * 0.025,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          trailing: Icon(
                                            Icons.add_circle_outline,
                                            color: Colors.white,
                                            size: size.width * 0.03,
                                          ),
                                          onTap: () {},
                                        ),
                                        Divider(
                                          color: Colors.grey[800],
                                          thickness: 0.6,
                                          height: 1,
                                        ),
                                      ],
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          TextWidget(
                            text:
                                "High-caliber solutions don’t happen by chance. We harness diverse expertise and cutting-edge technology to engineer experiences that drive measurable impact and resonate deeply with users.",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: size.width*0.025,
                              color: AppColors.white
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Container(
                            width: size.width * 0.22,
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.02),
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.limeGreen),
                                borderRadius: BorderRadius.circular(48),
                                color: AppColors.limeGreen),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Our Services",
                                  style: context.displayMedium.copyWith(
                                      fontSize: size.width * 0.02,
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  size: 10,
                                  color: AppColors.black,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height*0.3,
                              child: projectImages()),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          TextWidget(
                            text: "Connect with us!",
                            style: context.displayMedium
                                .copyWith(fontSize: size.width * 0.035),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          TextWidget(
                            text: "Your journey begins here!",
                            style: context.displayMedium
                                .copyWith(fontSize: size.width * 0.03),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          TextWidget(
                            text: "Let’s kick-start the conversation and build stuff people will love.",
                            style: context.displayMedium
                                .copyWith(fontSize: size.width * 0.02),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          const MobileViewForm(),
                          SizedBox(
                            height: size.height * 0.1,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    Image.asset(
                      AppImages.aboutuspagefirstimg,
                      width: size.width * 1,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.02,
                        bottom: MediaQuery.of(context).size.height * 0.02,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Text(
                                  "Prontastic is a company of innovation.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.023,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Text(
                                  "As technology advances,\nwe harness it to empower businesses.\nWe help our clients grow, adapt, and thrive.",
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.022,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        right: 20,
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 669,
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Prontastic partners with forward-thinking\nbusinesses to harness technology and\ninnovation, shaping solutions that enhance \nthe human experience.",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontFamily: 'Montserrat',
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "We create meaningful connections between \npeople and brands, building trust and \nloyalty. Our expertise spans IT consulting, \ncloud solutions, security services, and \nsoftware development, ensuring every \ntouchpoint adds value to the customer \njourney.",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "From strategy to execution, we design \nsystems that empower businesses, drive \ngrowth, and create lasting relationships— \nhelping brands thrive in a constantly \nevolving digital world.",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: AppColors.white,
                                      backgroundColor: AppColors.black,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        side: const BorderSide(
                                            color: Colors.white, width: 1.5),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        const Text(
                                          "Get in touch",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        const SizedBox(width: 5),
                                        Transform.rotate(
                                          angle: -3.5 * pi / 12.0,
                                          child: const Icon(
                                            Icons.arrow_forward,
                                            color: AppColors.limeGreen,
                                            size: 25,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                    SizedBox(
                      height: 300,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black,
                              Colors.green.shade900,
                              Colors.green.shade700,
                              Colors.black,
                            ],
                            stops: [0.0, 0.3, 0.7, 1.0],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.025,
                        right: MediaQuery.of(context).size.width * 0.02,
                        bottom: MediaQuery.of(context).size.height * 0.02,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Meet our ',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.052,
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'talented',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.052,
                                          color: Colors.lime,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\nteam ',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.052,
                                          color: Colors.lime,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'of creators',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.052,
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\nand ',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.052,
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'technologists.',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.052,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02),
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Text(
                                'Our team is a dynamic blend of business leaders, technologists, \nstrategists, and innovators driving impactful change.\nWith decades of expertise across IT, branding, and operations, \nwe’ve helped businesses—from startups to enterprises—seize \nopportunities, solve challenges, and achieve sustainable \ngrowth. Together, we’re committed to shaping a future where \ntechnology and innovation create meaningful value for our \nclients and their customers.',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.013,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
/*
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.02,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Expanded(
                                  child: ProfileCard(
                                    name: 'Nishant Kumar',
                                    title: 'Director',
                                    imagePath: AppImages.aboutUsFemale,
                                  ),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01),
                                const Expanded(
                                  child: ProfileCard(
                                    name: 'Prashant Kumar',
                                    title: 'Director - Technology Business',
                                    imagePath: AppImages.aboutUsMale,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Expanded(
                                  child: ProfileCard(
                                    name: 'Pooja Singh',
                                    title: 'Director - Brand & Marketing',
                                    imagePath: AppImages.aboutUsFemale,
                                  ),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01),
                                const Expanded(
                                  child: ProfileCard(
                                    name: 'Pragya Chaubey',
                                    title: 'Technical Team Lead',
                                    imagePath: AppImages.aboutUsMale,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Expanded(
                                child: ProfileCard(
                                  name: 'XYZ',
                                  title: 'ABC',
                                  imagePath: AppImages.aboutUsFemale,
                                ),
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01),
                              const Expanded(
                                child: ProfileCard(
                                  name: 'XYZ',
                                  title: 'ABC',
                                  imagePath: AppImages.aboutUsMale,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
*/
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.03,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Think you'd be a good addition to our team?",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.038,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF9DFF50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                side: const BorderSide(
                                  color: Color(0xFF9DFF50),
                                  width: 1.41,
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.01,
                                vertical:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Careers',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.02,
                                  ),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height * 0.1),
                          Divider(
                            color: const Color(0xFF9DFF50).withOpacity(0.6),
                            thickness:
                                MediaQuery.of(context).size.width * 0.002,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.03),
                      child: Row(
                        children: [
                          Text(
                            "OUR VALUES",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.025,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.025),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          bool isSmallScreen = constraints.maxWidth < 800;

                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    textAlign: TextAlign.start,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Our ',
                                          style: TextStyle(
                                            fontSize: isSmallScreen ? 40 : 70,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'values',
                                          style: TextStyle(
                                            fontSize: isSmallScreen ? 40 : 70,
                                            color: Colors.lime,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nare part of ',
                                          style: TextStyle(
                                            fontSize: isSmallScreen ? 40 : 70,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\neverything ',
                                          style: TextStyle(
                                            fontSize: isSmallScreen ? 40 : 70,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nwe do.  ',
                                          style: TextStyle(
                                            fontSize: isSmallScreen ? 40 : 70,
                                            color: Colors.lime,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1,
                              ),
                              SizedBox(
                                width: isSmallScreen
                                    ? double.infinity
                                    : size.width * 0.57,
                                child: Column(
                                  children: titles.map((title) {
                                    return Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            title,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: isSmallScreen ? 24 : 32,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          trailing: Icon(
                                            Icons.add_circle_outline,
                                            color: Colors.white,
                                            size: isSmallScreen ? 24 : 32,
                                          ),
                                          onTap: () {},
                                        ),
                                        Divider(
                                          color: Colors.grey[800],
                                          thickness: 0.5,
                                          height: 1,
                                        ),
                                      ],
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.02,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'High-caliber solutions don\'t happen by chance. We harness \n'
                              'diverse expertise and cutting-edge technology to engineer \n'
                              'experiences that drive measurable impact and resonate \n'
                              'deeply with users.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.028,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF9DFF50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: const BorderSide(
                                    color: Color(0xFF9DFF50),
                                    width: 1.41,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.01,
                                  vertical:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Our Services',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.02,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.01),
                                  const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                    projectImages(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    const Footer(),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                  ],
                ),
        ));
  }
}
