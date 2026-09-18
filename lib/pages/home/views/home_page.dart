import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prontastic/constants/app_colors.dart';
import 'package:prontastic/constants/app_images.dart';
import 'package:prontastic/constants/app_videos.dart';
import 'package:prontastic/pages/what_wew_do_footer.dart';
import 'package:prontastic/themes/custom_text_theme.dart';
import 'package:prontastic/widget/containe.dart';
import 'package:prontastic/widget/culture.dart';
import 'package:prontastic/widget/custom_widget.dart';
import 'package:prontastic/widget/from_the_chair.dart';
import 'package:prontastic/widget/hoverable_icon.dart';
import 'package:prontastic/widget/sevice.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

import '../../../widget/app_divider.dart';
import '../../../widget/text_widget.dart';
import '../../mobile_view_form.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late VideoPlayerController _controller;
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
    _controller = VideoPlayerController.asset(AppVideos.mainVideo)
      ..initialize().then((_) {
        _controller.setVolume(0);
        _controller.play();
        setState(() {});
      });

    chunkedBrands = getChunkedList(brands, 5);
    _pageController = PageController(initialPage: 0);

    timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < chunkedBrands.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _controller.pause();
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _pageController.dispose();
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isMobile = size.width < 800;
    final formKey = GlobalKey<FormState>();

    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController companyController = TextEditingController();
    final TextEditingController messageController = TextEditingController();

    void submitForm() {
      if (formKey.currentState!.validate()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Form submitted successfully!')),
        );
      }
    }

    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * 0.8,
                      padding: EdgeInsets.only(
                          top: size.width * 0.05, bottom: size.width * 0.08),
                      child: Column(
                        children: [
                          TextWidget(
                            text:
                                "We are an IT, design & tech service company.",
                            textAlign: TextAlign.center,
                            style: context.headlineLarge.copyWith(fontSize: 32),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          TextWidget(
                            text:
                                "With high emphasis on  professionalism and quality service , We deliver Innovative IT Solutions and Services, which enhances the technology growth of our customers as we always look up to having a long term sustainable relationship with our esteemed customers.",
                            textAlign: TextAlign.center,
                            style: context.displayMedium.copyWith(fontSize: 15),
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
                                      fontStyle: FontStyle.italic,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                Image.asset(
                                  AppImages.arrow,
                                  width: 15,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Center(
                      child: _controller.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            )
                          : const CircularProgressIndicator(),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: "Our Services",
                            style: context.bodySmall
                                .copyWith(fontSize: size.width * 0.045),
                          ),
                          SizedBox(height: size.height * 0.03),
                          TextWidget(
                            text:
                                "At Prontastic, we provide tailored tech solutions to help businesses succeed, from software development to IT infrastructure and security. We focus on delivering practical results that drive your business forward.",
                            maxlines: 10,
                            style: context.displayLarge
                                .copyWith(fontSize: size.width * 0.032),
                          ),
                          SizedBox(height: size.height * 0.03),
                          TextWidget(
                            text: 'See how we can help!',
                            style: context.displayLarge
                                .copyWith(fontSize: size.width * 0.032),
                          ),
                          SizedBox(height: size.height * 0.03),
                          Container(
                            width: size.width * 0.4,
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.02,
                                vertical: size.height * 0.005),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                                border: Border.all(color: AppColors.white)),
                            child: Row(
                              children: [
                                TextWidget(
                                  text: "Get in touch",
                                  style: context.displayMedium.copyWith(
                                      fontStyle: FontStyle.italic,
                                      fontSize: size.width * 0.025),
                                ),
                                SizedBox(
                                  width: size.width * 0.008,
                                ),
                                Image.asset(
                                  AppImages.arrow,
                                  width: size.width * 0.02,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: size.height * 0.07),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.01),
                                    child: TextWidget(
                                      text:
                                          'Software Development & Application Services',
                                      style: context.displayLarge.copyWith(
                                          fontSize: size.width * 0.03),
                                    ),
                                  ),
                                  TextWidget(
                                    text:
                                        'We navigate what\'s next at the intersection of creativity and tech innovation.',
                                    style: context.displayLarge
                                        .copyWith(fontSize: size.width * 0.024),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.01),
                                    child: AppDivider(
                                      height: 0.3,
                                      width: size.width * 0.8,
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                AppImages.arrow,
                                width: size.width * 0.02,
                                color: AppColors.white,
                              )
                            ],
                          ),
                          SizedBox(height: size.height * 0.025),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: size.width * 0.25,
                                height: size.height * 0.3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/images/Nike_HP_pgdkzn.jpg.png",
                                      fit: BoxFit.fill,
                                    ),
                                    const SizedBox(height: 10),
                                    const TextWidget(
                                        text: "Human-first design.",
                                        style: TextStyle(
                                            color: AppColors.bgColor,
                                            fontSize: 10)),
                                    SizedBox(
                                      width: size.width * 0.25,
                                      child: const TextWidget(
                                        text:
                                            'We design immersive experiences fueled by creativity and innovation to drive brand distinction',
                                        style: TextStyle(
                                            color: AppColors.bgColor,
                                            fontSize: 7),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.25,
                                height: size.height * 0.3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      AppImages.redColorImage,
                                      fit: BoxFit.fill,
                                    ),
                                    const SizedBox(height: 10),
                                    const TextWidget(
                                        text: "Deep expertise in data & tech",
                                        style: TextStyle(
                                            color: AppColors.bgColor,
                                            fontSize: 10)),
                                    SizedBox(
                                      width: size.width * 0.25,
                                      child: const TextWidget(
                                        text:
                                            "We harness our proprietary AI data platform (LIVE) to develop data-driven strategies that deliver measurable outcomes for clients",
                                        style: TextStyle(
                                            color: AppColors.bgColor,
                                            fontSize: 7),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.25,
                                height: size.height * 0.3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/images/NBCU_HP_tpzwgb.jpg.png",
                                      fit: BoxFit.fill,
                                    ),
                                    const SizedBox(height: 10),
                                    const TextWidget(
                                        text: "Speed to business value",
                                        style: TextStyle(
                                            color: AppColors.bgColor,
                                            fontSize: 10)),
                                    SizedBox(
                                      width: size.width * 0.25,
                                      child: const TextWidget(
                                        text:
                                            "We leverage AI tools that automate design and coding processes to drive greater value, cohesion and speed to market",
                                        style: TextStyle(
                                            color: AppColors.bgColor,
                                            fontSize: 7),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.02),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                text: "Our Work",
                                style: context.headlineSmall
                                    .copyWith(fontSize: size.width * 0.032),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextWidget(
                                    text: "SwaRail",
                                    style: context.displayMedium
                                        .copyWith(fontSize: size.width * 0.026),
                                  ),
                                  const Spacer(),
                                  SizedBox(
                                    width: size.width * 0.3,
                                    child: TextWidget(
                                      text:
                                          "Reinventing Indian Railways SuperApp 'SwaRail' to consolidate various railway services into a single platform.",
                                      style: context.displayMedium.copyWith(
                                          fontSize: size.width * 0.015),
                                    ),
                                  ),
                                  const Spacer(),
                                  TextWidget(
                                    text: "100%",
                                    style: context.displayMedium
                                        .copyWith(fontSize: size.width * 0.026),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.02,
                                  ),
                                  SizedBox(
                                    width: size.width * 0.2,
                                    child: TextWidget(
                                      text:
                                          "Integrates Multiple Railway Services, Reduces App Clutter and Space Usage.",
                                      style: context.displayMedium.copyWith(
                                          fontSize: size.width * 0.013),
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                AppImages.superApp,
                                width: size.width,
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              TextWidget(
                                text: "Indian Railway SuperApp",
                                style: context.displayMedium
                                    .copyWith(fontSize: size.width * 0.028),
                              ),
                              SizedBox(
                                height: size.height * 0.005,
                              ),
                              TextWidget(
                                text: "Future of Railway Ticketing And Reservation System",
                                style: context.displayMedium
                                    .copyWith(fontSize: size.width * 0.02),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: size.width * 0.2,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.02),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.limeGreen),
                                        borderRadius: BorderRadius.circular(48),
                                        color: AppColors.limeGreen),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextWidget(
                                          text: "Learn more",
                                          style: context.displayMedium.copyWith(
                                              fontSize: size.width * 0.02,
                                              color: AppColors.black),
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
                                  )),
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              AppDivider(
                                height: 0.5,
                                color: AppColors.white,
                                width: size.width,
                              ),
                              SizedBox(
                                height: size.height * 0.008,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextWidget(
                                    text: "PMS",
                                    style: context.displayMedium
                                        .copyWith(fontSize: size.width * 0.026),
                                  ),
                                  const Spacer(),
                                  SizedBox(
                                    width: size.width * 0.3,
                                    child: TextWidget(
                                      text:
                                          "Indian Railway Parcel Management System (CRIS PMS)",
                                      style: context.displayMedium.copyWith(
                                          fontSize: size.width * 0.015),
                                    ),
                                  ),
                                  const Spacer(),
                                  TextWidget(
                                    text: "100%",
                                    style: context.displayMedium
                                        .copyWith(fontSize: size.width * 0.026),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.02,
                                  ),
                                  SizedBox(
                                    width: size.width * 0.3,
                                    child: TextWidget(
                                      text:
                                          "Successful execution of Digitization of Parcel Management System Phase II for 168 Railway stations PAN India including application, services and supply of various relevant IT equipments such as Thinclient, Printers, Electronic Weighment Machines etc.",
                                      style: context.displayMedium.copyWith(
                                          fontSize: size.width * 0.013),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: size.height * 0.005,
                              ),
                              Image.asset(
                                AppImages.dogCatPMS,
                                width: size.width,
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              TextWidget(
                                text: "Parcel Management System",
                                style: context.displayMedium
                                    .copyWith(fontSize: size.width * 0.028),
                              ),
                              SizedBox(
                                height: size.height * 0.005,
                              ),
                              TextWidget(
                                text:
                                    "Successful execution of Digitization of Parcel Management System Phase II for 168 Railway stations PAN India including application, services and supply of various relevant IT equipments such as Thinclient, Printers, Electronic Weighment Machines etc.",
                                style: context.displayMedium
                                    .copyWith(fontSize: size.width * 0.02),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: size.width * 0.2,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.02),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.limeGreen),
                                        borderRadius: BorderRadius.circular(48),
                                        color: AppColors.limeGreen),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextWidget(
                                          text: "Learn more",
                                          style: context.displayMedium.copyWith(
                                              fontSize: size.width * 0.02,
                                              color: AppColors.black),
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
                                  )),
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              TextWidget(
                                text: "Check out our other projects",
                                style: context.displayMedium
                                    .copyWith(fontSize: size.width * 0.032),
                              ),
                              //Add all our projects here......Pragya
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: size.width * 0.2,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.02),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.limeGreen),
                                        borderRadius: BorderRadius.circular(48),
                                        color: AppColors.limeGreen),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextWidget(
                                          text: "Learn more",
                                          style: context.displayMedium.copyWith(
                                              fontSize: size.width * 0.02,
                                              color: AppColors.black),
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
                                  )),
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              TextWidget(
                                text: "Culture",
                                style: context.displayMedium
                                    .copyWith(fontSize: size.width * 0.032),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              TextWidget(
                                text:
                                    "At Prontastic, our culture is built on innovation, collaboration, and growth. We believe in fostering a supportive and inclusive environment where every voice is valued and ideas are encouraged. Our team thrives on creativity and curiosity, always pushing the boundaries of technology to deliver exceptional solutions. Continuous learning and development are at the core of what we do, empowering our people to grow both personally and professionally. At Prontastic, we’re not just building solutions—we’re building a community that inspires excellence and drives meaningful impact for our clients./**/",
                                style: context.displayMedium
                                    .copyWith(fontSize: size.width * 0.02),
                              ),
                              SizedBox(
                                height: size.height * 0.08,
                              ),
                              // const FromTheChair(),
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
                              const MobileViewForm(),
                              SizedBox(
                                height: size.height * 0.1,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: size.height * 0.03),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: size.width * 0.6,
                            child: TextWidget(
                              text:
                                  "We are an IT, design & tech service company.",
                              style: context.headlineLarge.copyWith(
                                  fontSize: 80, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: size.width * 0.28,
                                child: TextWidget(
                                  text:
                                      "With high emphasis on  professionalism and quality service , We deliver Innovative IT Solutions and Services, which enhances the technology growth of our customers as we always look up to having a long term sustainable relationship with our esteemed customers.",
                                  style: context.displayMedium.copyWith(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.05,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.01,
                                    vertical: size.height * 0.01),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(48),
                                    border: Border.all(color: AppColors.white)),
                                child: Row(
                                  children: [
                                    TextWidget(
                                      text: "Get in touch",
                                      style: context.displayMedium.copyWith(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.005,
                                    ),
                                    Image.asset(
                                      AppImages.arrow,
                                      width: 15,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    Center(
                      child: _controller.value.isInitialized
                          ? AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            )
                          : const CircularProgressIndicator(),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                    SizedBox(width: MediaQuery.of(context).size.height * 0.05),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: size.height * 0.03),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: "Our Services",
                            style: context.bodySmall.copyWith(fontSize: 53),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: size.width * 0.3,
                                    child: TextWidget(
                                      text:
                                          "At Prontastic, we provide tailored tech solutions to help businesses succeed, from software development to IT infrastructure and security. We focus on delivering practical results that drive your business forward.",
                                      maxlines: 10,
                                      style: context.displayLarge
                                          .copyWith(fontSize: 30),
                                    ),
                                  ),
                                  SizedBox(height: size.height * 0.1),
                                  TextWidget(
                                    text: 'See how we can help!',
                                    style: context.displayLarge
                                        .copyWith(fontSize: 30),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.01,
                                        vertical: size.height * 0.01),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(48),
                                        border:
                                            Border.all(color: AppColors.white)),
                                    child: Row(
                                      children: [
                                        TextWidget(
                                          text: "Get in touch",
                                          style: context.displayMedium.copyWith(
                                              fontStyle: FontStyle.italic,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.005,
                                        ),
                                        Image.asset(
                                          AppImages.arrow,
                                          width: 15,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: size.width * 0.15),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    HoverableRowWithDivider(
                                      text:
                                          'Software Development & Application Services',
                                      spacing: 130,
                                    ),
                                    SizedBox(height: 20),
                                    HoverableRowWithDivider(
                                      text:
                                          'IT Infrastructure & Security Services',
                                      spacing: 250,
                                    ),
                                    SizedBox(height: 20),
                                    HoverableRowWithDivider(
                                      text: 'Consulting & Staff Augmentation',
                                      spacing: 280,
                                    ),
                                    SizedBox(height: 20),
                                    HoverableRowWithDivider(
                                      text: 'AI/ML & Emerging Technologies',
                                      spacing: 290,
                                    ),
                                    SizedBox(height: 20),
                                    HoverableRowWithDivider(
                                      text: 'User Experience Design',
                                      spacing: 390,
                                    ),
                                    SizedBox(height: 20),
                                    HoverableRowWithDivider(
                                      text:
                                          'Social Media Management & Marketing',
                                      spacing: 210,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Our Work',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: AppColors.bgColor,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    const service(),
                    const SizedBox(height: 25),
                    const Containe(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    const CustomWidget(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    const Culture(),
                    // SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    // const FromTheChair(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: size.height * 0.01),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: "Contact Us",
                            style: GoogleFonts.montserrat(
                                fontSize: size.width * 0.04,
                                fontWeight: FontWeight.w500,
                                color: AppColors.limeGreen),
                          ),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              bool isWide = constraints.maxWidth > 800;
                              return Flex(
                                direction:
                                    isWide ? Axis.horizontal : Axis.vertical,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Your journey begins here!",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: size.width * 0.03,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        SizedBox(
                                          width: size.width * 0.6,
                                          child: Text(
                                            "Let's kick-start the conversation and build stuff people will love.",
                                            style: GoogleFonts.montserrat(
                                                color: AppColors.white,
                                                fontSize: size.width * 0.023,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      width: isWide ? 50 : 0,
                                      height: isWide ? 0 : 20),
                                  Expanded(
                                    child: Form(
                                      key: formKey,
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            controller: nameController,
                                            decoration: const InputDecoration(
                                              hintText: 'Name',
                                              hintStyle: TextStyle(
                                                  color: Colors.white),
                                              border: OutlineInputBorder(),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue,
                                                    width: 2.0),
                                              ),
                                            ),
                                            style: const TextStyle(
                                                color: Colors.white),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter your name';
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(height: 16),
                                          TextFormField(
                                            controller: emailController,
                                            decoration: const InputDecoration(
                                              hintText: 'Email',
                                              hintStyle: TextStyle(
                                                  color: Colors.white),
                                              border: OutlineInputBorder(),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue,
                                                    width: 3.0),
                                              ),
                                            ),
                                            style: const TextStyle(
                                                color: Colors.white),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter your email';
                                              }

                                              if (!RegExp(
                                                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                                  .hasMatch(value)) {
                                                return 'Enter a valid email address';
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(height: 16),
                                          TextFormField(
                                            controller: companyController,
                                            decoration: const InputDecoration(
                                              hintText: 'Company',
                                              hintStyle: TextStyle(
                                                  color: Colors.white),
                                              border: OutlineInputBorder(),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue,
                                                    width: 3.0),
                                              ),
                                            ),
                                            style: const TextStyle(
                                                color: Colors.white),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter your company name';
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(height: 16),
                                          TextFormField(
                                            controller: messageController,
                                            decoration: const InputDecoration(
                                              hintText: 'Message',
                                              hintStyle: TextStyle(
                                                  color: Colors.white),
                                              border: OutlineInputBorder(),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.white),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue,
                                                    width: 3.0),
                                              ),
                                            ),
                                            style: const TextStyle(
                                                color: Colors.white),
                                            maxLines: 5,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter a message';
                                              }
                                              if (value.length < 10) {
                                                return 'Message must be at least 10 characters long';
                                              }
                                              return null;
                                            },
                                          ),
                                          const SizedBox(height: 20),
                                          SizedBox(
                                            width: 600,
                                            child: ElevatedButton(
                                              onPressed: submitForm,
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0XFF9DFF50),
                                                foregroundColor: Colors.black,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 10),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  side: const BorderSide(
                                                    color: Color(0XFF9DFF50),
                                                    width: 1,
                                                  ),
                                                ),
                                              ),
                                              child: const Text(
                                                "Submit",
                                                style: TextStyle(fontSize: 30),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          const SizedBox(height: 40),
                          NewFooter(),
                          SizedBox(height: size.height*0.05),
                          Row(
                            children: [
                              SizedBox(
                                width: size.width * 0.48,
                                child: TextWidget(
                                  text:
                                      "Copyright © 2024 ProntasticITServicesPvtLtd. All rights reserved.",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.white),
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  _launchUrl(
                                      "https://www.facebook.com/dummyProfile");
                                },
                                child: Container(
                                  padding: EdgeInsets.all(size.width * 0.008),
                                  decoration: const BoxDecoration(
                                      color: AppColors.darkCharcoal,
                                      shape: BoxShape.circle),
                                  child: Image.asset(
                                    AppImages.facebook,
                                    width: size.width * 0.02,
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width * 0.015),
                              GestureDetector(
                                onTap: () {
                                  _launchUrl(
                                      "https://www.linkedin.com/dummyProfile");
                                },
                                child: Container(
                                  padding: EdgeInsets.all(size.width * 0.008),
                                  decoration: const BoxDecoration(
                                      color: AppColors.darkCharcoal,
                                      shape: BoxShape.circle),
                                  child: Image.asset(
                                    AppImages.linkedin,
                                    width: size.width * 0.02,
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width * 0.015),
                              GestureDetector(
                                onTap: () {
                                  _launchUrl(
                                      "https://www.github.com/dummyProfile");
                                },
                                child: Container(
                                  padding: EdgeInsets.all(size.width * 0.008),
                                  decoration: const BoxDecoration(
                                      color: AppColors.darkCharcoal,
                                      shape: BoxShape.circle),
                                  child: Image.asset(
                                    AppImages.github,
                                    width: size.width * 0.02,
                                  ),
                                ),
                              ),
                              SizedBox(width: size.width * 0.015),
                              GestureDetector(
                                onTap: () {
                                  _launchUrl(
                                      "https://www.dribbble.com/dummyProfile");
                                },
                                child: Container(
                                  padding: EdgeInsets.all(size.width * 0.008),
                                  decoration: const BoxDecoration(
                                      color: AppColors.darkCharcoal,
                                      shape: BoxShape.circle),
                                  child: Image.asset(
                                    AppImages.dribbble,
                                    width: size.width * 0.02,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height*0.2),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                  ],
                ),
        ));
  }

  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
