import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prontastic/constants/app_colors.dart';
import 'package:prontastic/pages/aboutus_page.dart';
import 'package:prontastic/pages/career_page.dart';
import 'package:prontastic/pages/home/views/home_page.dart';
import 'package:prontastic/pages/our_client_page.dart';
import 'package:prontastic/pages/services_page.dart';
import 'package:prontastic/pages/skill_and_tech.dart';
import 'package:prontastic/routes/app_pages.dart';
import 'package:prontastic/widget/button_widget.dart';
import 'package:prontastic/widget/text_widget.dart';

import '../../constants/app_images.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});

  @override
  _HeaderSectionState createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  final ValueNotifier<int> selectedPage = ValueNotifier<int>(0);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    selectedPage.dispose();
    super.dispose();
  }

  Widget buildNavItem(String text, int index, bool isMobile) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedPage,
      builder: (context, pageIndex, child) {
        bool isSelected = pageIndex == index;
        return InkWell(
          onTap: () {
            selectedPage.value = index;
            if (isMobile) Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: TextWidget(
              text: text,
              style: TextStyle(
                color: isSelected ? AppColors.limeGreen : AppColors.white,
                fontWeight: FontWeight.bold,
                fontSize: isMobile ? 18 : 20,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = MediaQuery.of(context).size;
        bool isMobile = constraints.maxWidth < 800;

        return Scaffold(
          key: _scaffoldKey,
          drawer: isMobile
              ? Drawer(
                  backgroundColor: AppColors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth * 0.07,
                          vertical: constraints.maxHeight * 0.04,
                        ),
                        child: Image.asset(
                          AppImages.prontasticLogo,
                          height: size.height * 0.07,
                        ),
                      ),
                      // Container(
                      //   padding: EdgeInsets.symmetric(
                      //     horizontal: constraints.maxWidth * 0.07,
                      //     vertical: constraints.maxHeight * 0.04,
                      //   ),
                      //   decoration: const BoxDecoration(color: AppColors.black),
                      //   child: Container(
                      //     padding: EdgeInsets.symmetric(
                      //       horizontal: constraints.maxWidth * 0.021,
                      //     ),
                      //     decoration: BoxDecoration(
                      //       color: AppColors.limeGreen,
                      //       borderRadius: BorderRadius.circular(4),
                      //     ),
                      //     child: Text(
                      //       'P',
                      //       style: TextStyle(
                      //         color: AppColors.black,
                      //         fontSize: constraints.maxWidth * 0.07,
                      //         fontWeight: FontWeight.w700,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildNavItem('Home', 0, isMobile),
                            buildNavItem('About us', 1, isMobile),
                            buildNavItem('Services', 2, isMobile),
                            buildNavItem('Skill & Tech', 3, isMobile),
                            buildNavItem('Our Clients', 4, isMobile),
                            buildNavItem('Careers', 5, isMobile),
                          ],
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.CONTACT_US);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: ButtonWidget(
                            buttonText: 'Contact Us',
                            onTap: () {},
                            width: double.infinity,
                          ),
                        ),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.04),
                    ],
                  ),
                )
              : null,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: constraints.maxWidth * 0.07,
                    vertical: constraints.maxHeight * 0.04,
                  ),
                  decoration: const BoxDecoration(color: AppColors.black),
                  child: Row(
                    children: [
                      Image.asset(
                        AppImages.prontasticLogo,
                        height: size.height * 0.07,
                      ),
                      // Container(
                      //   padding: EdgeInsets.symmetric(
                      //     horizontal: constraints.maxWidth * 0.021,
                      //   ),
                      //   decoration: BoxDecoration(
                      //     color: AppColors.limeGreen,
                      //     borderRadius: BorderRadius.circular(4),
                      //   ),
                      //   child: Text(
                      //     'P',
                      //     style: TextStyle(
                      //       color: AppColors.black,
                      //       fontSize:
                      //           isMobile ? constraints.maxWidth * 0.07 : 35,
                      //       fontWeight: FontWeight.w700,
                      //     ),
                      //   ),
                      // ),
                      const Spacer(),
                      if (!isMobile) ...[
                        buildNavItem('Home', 0, isMobile),
                        SizedBox(width: constraints.maxWidth * 0.02),
                        buildNavItem('About us', 1, isMobile),
                        SizedBox(width: constraints.maxWidth * 0.02),
                        buildNavItem('Services', 2, isMobile),
                        SizedBox(width: constraints.maxWidth * 0.02),
                        buildNavItem('Skill & Tech', 3, isMobile),
                        SizedBox(width: constraints.maxWidth * 0.02),
                        buildNavItem('Our Clients', 4, isMobile),
                        SizedBox(width: constraints.maxWidth * 0.02),
                        buildNavItem('Careers', 5, isMobile),
                        SizedBox(width: constraints.maxWidth * 0.02),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.CONTACT_US);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: size.width * 0.15,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 10),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            decoration: BoxDecoration(
                                color: AppColors.limeGreen,
                                borderRadius: BorderRadius.circular(32),
                                border: Border.all(
                                    color: AppColors.limeGreen, width: 0)),
                            child: TextWidget(
                              text: "Contact Us",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ] else
                        IconButton(
                          icon: Image.asset(AppImages.menu,
                              width: constraints.maxWidth * 0.07),
                          onPressed: () =>
                              _scaffoldKey.currentState?.openDrawer(),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height,
                  child: ValueListenableBuilder<int>(
                    valueListenable: selectedPage,
                    builder: (context, pageIndex, child) {
                      switch (pageIndex) {
                        case 1:
                          return const AboutusPage();
                        case 2:
                          return ServicesPage();
                        case 3:
                          return const SkillAndTech();
                        case 4:
                          return const OurClientPage();
                        case 5:
                          return CareerPage();
                        default:
                          return const Homepage();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
