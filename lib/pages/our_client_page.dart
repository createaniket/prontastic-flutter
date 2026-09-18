import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prontastic/pages/mobile_view_form.dart';
import 'package:prontastic/themes/custom_text_theme.dart';
import 'package:prontastic/widget/footer.dart';
import 'package:prontastic/widget/image_two.dart';
import 'package:prontastic/widget/our_clientpage_text_one.dart';
import '../constants/app_colors.dart';
import '../constants/app_images.dart';
import '../widget/text_widget.dart';
import 'home/partners_oem.dart';

class OurClientPage extends StatefulWidget {
  const OurClientPage({super.key});

  @override
  State<OurClientPage> createState() => _OurClientPageState();
}

class _OurClientPageState extends State<OurClientPage> {
  late Timer timer;

  List<List<String>> getChunkedList(List<String> list, int chunkSize) {
    return List.generate(
      (list.length / chunkSize).ceil(),
      (index) => list.skip(index * chunkSize).take(chunkSize).toList(),
    );
  }

  final List<String> brands = [
    AppImages.crisImage,
    AppImages.cgaLogo,
    AppImages.westRailway,
    AppImages.southWestRailway,
    AppImages.northernRailway,
    AppImages.ongcLogo,
    AppImages.taslLogo,
    AppImages.adglobalLogo,
    AppImages.cospazesLogo,
    AppImages.lnbLogo,
  ];
  late List<List<String>> chunkedBrands;
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    chunkedBrands = getChunkedList(brands, 5);
    _pageController = PageController(initialPage: 0);

    timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < chunkedBrands.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    timer.cancel();
    super.dispose();
  }

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
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.06,
                        vertical: size.height * 0.04),
                    child: TextWidget(
                      text:
                          "We love to provide value, let’s hear it from our clients.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white),
                    ),
                  ),
                  Container(
                    color: AppColors.white,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              AppImages.backdropServices,
                              width: size.width,
                              fit: BoxFit.cover,
                            ),
                            Positioned.fill(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.05,
                                    vertical: size.height * 0.02),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(
                                      text:
                                          "Our Clients, Partners & Collaborators",
                                      style: context.bodySmall.copyWith(
                                        fontSize: size.width * 0.045,
                                        color: AppColors.black,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: size.height * 0.03),
                                    SizedBox(
                                      height: size.height * 0.04,
                                      child: PageView.builder(
                                        controller: _pageController,
                                        itemCount: chunkedBrands.length,
                                        itemBuilder: (context, index) {
                                          final items = chunkedBrands[index];
                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children:
                                                items.map((brandImagePath) {
                                              return Image.asset(
                                                brandImagePath,
                                                fit: BoxFit.cover,
                                              );
                                            }).toList(),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05,
                        vertical: size.height * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                          text:
                          "Our Authorized Partners",
                          style: GoogleFonts.montserrat(
                            fontSize: size.width*0.05,
                            color: AppColors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: size.height*0.02,
                        ),
                        HorizontalImageGrid(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: "Contact Us",
                          style: context.displayMedium.copyWith(
                              fontSize: size.width * 0.032,
                              color: AppColors.limeGreen),
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
                          height: size.height * 0.05,
                        ),
                        const MobileViewForm()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const OurClientPageTextOne(),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Container(
                    color: AppColors.white,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              AppImages.backdropServices,
                              width: size.width,
                              fit: BoxFit.cover,
                            ),
                            Positioned.fill(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.05,
                                    vertical: size.height * 0.05),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(
                                      text:
                                          "Our Clients, Partners & Collaborators",
                                      style: context.bodySmall.copyWith(
                                        fontSize: 53,
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: size.height * 0.08),
                                    SizedBox(
                                      height: size.height * 0.14,
                                      child: PageView.builder(
                                        controller: _pageController,
                                        itemCount: chunkedBrands.length,
                                        itemBuilder: (context, index) {
                                          final items = chunkedBrands[index];
                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children:
                                                items.map((brandImagePath) {
                                              return Image.asset(
                                                brandImagePath,
                                                fit: BoxFit.cover,
                                              );
                                            }).toList(),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  /*const SizedBox(height: 40),
                  const ImageTwo(),
                  */const SizedBox(height: 80),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05,
                        vertical: size.height * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text:
                          "Our Authorized Partners",
                          style: GoogleFonts.montserrat(
                            fontSize: size.width*0.03,
                            color: AppColors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: size.height*0.04,
                        ),
                        HorizontalImageGrid(),
                      ],
                    ),
                  ),
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
