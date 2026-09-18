import 'package:flutter/material.dart';
import 'package:prontastic/constants/app_colors.dart';
import 'package:prontastic/pages/aboutus_page.dart';
import 'package:prontastic/pages/career_page.dart';
import 'package:prontastic/pages/mobile_view_form.dart';
import 'package:prontastic/pages/our_client_page.dart';
import 'package:prontastic/pages/services_page.dart';
import 'package:prontastic/pages/skill_and_tech.dart';
import 'package:prontastic/routes/app_pages.dart';
import 'package:prontastic/themes/custom_text_theme.dart';
import 'package:prontastic/widget/button_widget.dart';
import 'package:prontastic/widget/footer.dart';
import 'package:prontastic/widget/jov_description_text_one.dart';
import 'package:prontastic/widget/text_three.dart';
import 'package:prontastic/widget/text_two.dart';
import 'package:prontastic/widget/text_widget.dart';

import '../constants/app_images.dart';

class JobDescriptionPage extends StatelessWidget {
  const JobDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isMobile = size.width < 600;

    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: isMobile
            ? Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.04,
                      vertical: size.height * 0.02,
                    ),
                    decoration: const BoxDecoration(color: AppColors.black),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.HOME);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.021,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.limeGreen,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'P',
                              style: TextStyle(
                                color: AppColors.black,
                                fontSize: size.width * 0.07,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, Routes.HOME);
                            },
                            child:
                            Image.asset(AppImages.menu, width: size.width * 0.07),
                          ),
                      ],
                    ),
                  ),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: JovDescriptionTextOne()),
                  const Align(alignment: Alignment.center, child: TextTwo()),
                  const Divider(),
                  const Align(alignment: Alignment.center, child: TextThree()),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.04,
                        vertical: size.height * 0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: "Connect With Us!",
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
                          text:
                              "Let’s kick-start the conversation and build stuff people will love.",
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
                  )
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //  NavigationBar(),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.04,
                        vertical: size.height * 0.04),
                    decoration: const BoxDecoration(
                      color: AppColors.black,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.012,
                              vertical: size.height * 0.01),
                          decoration: BoxDecoration(
                            color: AppColors.limeGreen,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const TextWidget(
                            text: 'P',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const Spacer(),
                        TextWidget(
                          text: 'Home',
                          style: context.displaySmall
                              .copyWith(color: AppColors.white),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AboutusPage()),
                            );
                          },
                          child: TextWidget(
                            text: 'About us',
                            style: context.displaySmall
                                .copyWith(color: AppColors.white),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ServicesPage()),
                            );
                          },
                          child: TextWidget(
                            text: 'Services',
                            style: context.displaySmall
                                .copyWith(color: AppColors.white),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SkillAndTech()),
                            );
                          },
                          child: TextWidget(
                            text: 'Skill & Tech',
                            style: context.displaySmall
                                .copyWith(color: AppColors.white),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OurClientPage()),
                            );
                          },
                          child: TextWidget(
                            text: 'Our Clients',
                            style: context.displaySmall
                                .copyWith(color: AppColors.white),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CareerPage()),
                            );
                          },
                          child: TextWidget(
                            text: 'Careers',
                            style: context.displaySmall
                                .copyWith(color: AppColors.white),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        ButtonWidget(
                            buttonText: 'Contact Us',
                            onTap: () {},
                            width: size.width * 0.1),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  const JovDescriptionTextOne(),
                  const SizedBox(height: 40),
                  const Align(alignment: Alignment.center, child: TextTwo()),
                  const SizedBox(height: 40),
                  const Divider(),
                  const SizedBox(height: 40),
                  const Align(alignment: Alignment.center, child: TextThree()),
                  const SizedBox(height: 80),
                  const Footer(),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                ],
              ),
      ),
    );
  }
}
