import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prontastic/constants/app_images.dart';
import 'package:prontastic/pages/what_wew_do_footer.dart';
import 'package:prontastic/pages/mobile_view_form.dart';
import 'package:prontastic/themes/custom_text_theme.dart';
import 'package:prontastic/widget/containe.dart';
import 'package:prontastic/widget/custom_widget.dart';
import 'package:prontastic/widget/footer.dart';
import 'package:prontastic/widget/sevice.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/app_colors.dart';
import '../widget/app_divider.dart';
import '../widget/text_widget.dart';

class SkillAndTech extends StatefulWidget {
  const SkillAndTech({super.key});

  @override
  State<SkillAndTech> createState() => _SkillAndTechState();
}

class _SkillAndTechState extends State<SkillAndTech> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isMobile = size.width < 600;
    final _formKey = GlobalKey<FormState>();

    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _companyController = TextEditingController();
    final TextEditingController _messageController = TextEditingController();

    void _submitForm() {
      if (_formKey.currentState!.validate()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Form submitted successfully!')),
        );
      }
    }


    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: isMobile
            ? Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.03,
                        vertical: size.width * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                          text:
                              "Our skills and latest tech are beyond comparison.",
                          textAlign: TextAlign.center,
                          style: context.headlineLarge
                              .copyWith(fontSize: size.width * 0.05),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        TextWidget(
                          text:
                              "With unmatched expertise and a commitment to excellence, we provide cutting-edge technology solutions and services that empower businesses to thrive in a competitive landscape. Our innovative approach ensures sustainable growth and fosters long-lasting partnerships with our valued clients.",
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
                                    fontStyle: FontStyle.italic, fontSize: 14),
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
                  Image.asset(
                    AppImages.skillntechmainimg,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.03,
                        vertical: size.width * 0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: "What We Do",
                          style: GoogleFonts.montserrat(
                              fontSize: size.width * 0.045,
                              color: AppColors.white),
                        ),
                        SizedBox(height: size.height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Data Centre/\nIT Services",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.08,
                                  child: TextWidget(
                                    text:
                                    "Servers\nStorage\nDatabase\nRouters\nSwitches\nLan Extenders\nSD WAN\nCloud Others",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Application",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.15,
                                  child: TextWidget(
                                    text:
                                    "Mobile App Development (iOS / Android)\nApp / Web Revamp & Maintenance\nUI-UX\nEcommerce / Marketplace App\nSoftware Web Development\nQA & Testing",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Team skills",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.15,
                                  child: TextWidget(
                                    text:
                                    "Back End: Node.js, Dotnet, PHP, APIs, Java Script, Python etc. Front End: Flutter, React, Angular js, C/C++ etc.\nOther Skills: Databases, Data Analytics, Kafka, CDN, Cloud, Cache, Figma, Lucid, Google Analytics etc.",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Training",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.15,
                                  child: TextWidget(
                                    text:
                                    "SIEM – All leading\nSIEM Tools\nFirewall- All leading Brands\nEndpoint Security – All Leading OEMs\nOthers- \nIPS/NIPS/DAM/ADC/WAF/Proxy/Email Security etc.",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.04),
                        TextWidget(
                          text: "Cyber Security",
                          style: GoogleFonts.montserrat(
                              fontSize: size.width * 0.035,
                              color: AppColors.white),
                        ),
                        SizedBox(height: size.height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Advance Threat\nManagement",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.15,
                                  child: TextWidget(
                                    text:
                                    "SIEM, SOC, UEBA\nSOAR, MDR\nThreat Detection\nThreat Intelligence\nZero Trust",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text:
                                  "Unified Network\nSecurity & Management",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.2,
                                  child: TextWidget(
                                    text:
                                    "IDS/IPS, Firewall With Deep\nPacket Inspection, VPN, NAC, NDR\nEDR/XDR, Gateway Antivirus\nContent Filtering, Email Security",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Data Security\n& Privacy",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.15,
                                  child: TextWidget(
                                    text:
                                    "Data Loss Prevention(DLP)\nData Encryption",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Application Security",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.15,
                                  child: TextWidget(
                                    text:
                                    "Mobile App Security, VA / PT,\nDev Ops Security, Cloud Security,\nWeb Application Security Database Security",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        AppDivider(
                          height: 1,
                          color: AppColors.white,
                          width: size.width,
                        ),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
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
                                    style: context.displayMedium
                                        .copyWith(fontSize: size.width * 0.015),
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
                                    style: context.displayMedium
                                        .copyWith(fontSize: size.width * 0.013),
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
                              text:
                                  "Future of Railway Ticketing And Reservation System",
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
                                    style: context.displayMedium
                                        .copyWith(fontSize: size.width * 0.015),
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
                                    style: context.displayMedium
                                        .copyWith(fontSize: size.width * 0.013),
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
                            TextWidget(
                              text:
                                  "We navigate what's next at the intersection of creativity and tech innovation.",
                              style: context.displayMedium
                                  .copyWith(fontSize: size.width * 0.02),
                            ),
                            //Add all our projects here......Pragya
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: size.width * 0.25,
                                  height: size.height * 0.33,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                  height: size.height * 0.33,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                  height: size.height * 0.33,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                            Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextFormField(
                                    controller: _nameController,
                                    decoration: const InputDecoration(
                                      hintText: 'Name',
                                      hintStyle: TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.blue, width: 2.0),
                                      ),
                                    ),
                                    style: const TextStyle(color: Colors.white),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your name';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  TextFormField(
                                    controller: _emailController,
                                    decoration: const InputDecoration(
                                      hintText: 'Email',
                                      hintStyle: TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.blue, width: 3.0),
                                      ),
                                    ),
                                    style: const TextStyle(color: Colors.white),
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your email';
                                      }

                                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                          .hasMatch(value)) {
                                        return 'Enter a valid email address';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  TextFormField(
                                    controller: _companyController,
                                    decoration: const InputDecoration(
                                      hintText: 'Company',
                                      hintStyle: TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.blue, width: 3.0),
                                      ),
                                    ),
                                    style: const TextStyle(color: Colors.white),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your company name';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                  TextFormField(
                                    controller: _messageController,
                                    decoration: const InputDecoration(
                                      hintText: 'Message',
                                      hintStyle: TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Colors.blue, width: 3.0),
                                      ),
                                    ),
                                    style: const TextStyle(color: Colors.white),
                                    maxLines: 5,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter a message';
                                      }
                                      if (value.length < 10) {
                                        return 'Message must be at least 10 characters long';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(height: size.height * 0.02),
                                  SizedBox(
                                    width: size.width,
                                    child: ElevatedButton(
                                      onPressed: _submitForm,
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0XFF9DFF50),
                                        foregroundColor: Colors.black,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          side: const BorderSide(
                                            color: Color(0XFF9DFF50),
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "Submit",
                                        style: TextStyle(
                                            fontSize: size.width * 0.03, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.08,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: size.width * 0.48,
                                        child: TextWidget(
                                          text: "Copyright © 2024 ProntasticITServicesPvtLtd. All rights reserved.",
                                          style: context.displayMedium
                                              .copyWith(fontSize: size.width * 0.02),
                                        ),
                                      ),
                                      const Spacer(),
                                      GestureDetector(
                                        onTap: () {
                                          _launchUrl("https://www.facebook.com/dummyProfile");
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
                                          _launchUrl("https://www.linkedin.com/dummyProfile");
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
                                          _launchUrl("https://www.github.com/dummyProfile");
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
                                          _launchUrl("https://www.dribbble.com/dummyProfile");
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
                                  const SizedBox(height: 20),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                ],
              )
            : Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'Our skills and latest\ntech are beyond\ncomparison.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 65,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 100.0),
                            child: Text(
                              "With unmatched expertise and a \n commitment to excellence, we provide\n cutting-edge technology solution and \n services that empower business to thrive \n in a competitive landscape. Our innovative \n approach ensures sustainable growth and \n fosters long-lasting partnerships with our \n valued clients.",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height * 0.1),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
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
                                      fontStyle: FontStyle.italic),
                                ),
                                const SizedBox(width: 5),
                                Transform.rotate(
                                  angle: -3.5 * pi / 12.0,
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.green,
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
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    AppImages.skillntechmainimg,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: EdgeInsets.all(size.width * 0.03),
                    child: Column(
                      children: [
                        TextWidget(
                          text: "What We Do",
                          style: GoogleFonts.montserrat(
                              fontSize: size.width * 0.045,
                              color: AppColors.white),
                        ),
                        SizedBox(height: size.height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Data Centre/\nIT Services",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.08,
                                  child: TextWidget(
                                    text:
                                        "Servers\nStorage\nDatabase\nRouters\nSwitches\nLan Extenders\nSD WAN\nCloud Others",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Application",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.15,
                                  child: TextWidget(
                                    text:
                                        "Mobile App Development (iOS / Android)\nApp / Web Revamp & Maintenance\nUI-UX\nEcommerce / Marketplace App\nSoftware Web Development\nQA & Testing",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Team skills",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.15,
                                  child: TextWidget(
                                    text:
                                        "Back End: Node.js, Dotnet, PHP, APIs, Java Script, Python etc. Front End: Flutter, React, Angular js, C/C++ etc.\nOther Skills: Databases, Data Analytics, Kafka, CDN, Cloud, Cache, Figma, Lucid, Google Analytics etc.",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Training",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.15,
                                  child: TextWidget(
                                    text:
                                        "SIEM – All leading\nSIEM Tools\nFirewall- All leading Brands\nEndpoint Security – All Leading OEMs\nOthers- \nIPS/NIPS/DAM/ADC/WAF/Proxy/Email Security etc.",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.04),
                        TextWidget(
                          text: "Cyber Security",
                          style: GoogleFonts.montserrat(
                              fontSize: size.width * 0.035,
                              color: AppColors.white),
                        ),
                        SizedBox(height: size.height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Advance Threat\nManagement",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.15,
                                  child: TextWidget(
                                    text:
                                        "SIEM, SOC, UEBA\nSOAR, MDR\nThreat Detection\nThreat Intelligence\nZero Trust",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text:
                                      "Unified Network\nSecurity & Management",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.2,
                                  child: TextWidget(
                                    text:
                                        "IDS/IPS, Firewall With Deep\nPacket Inspection, VPN, NAC, NDR\nEDR/XDR, Gateway Antivirus\nContent Filtering, Email Security",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Data Security\n& Privacy",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.15,
                                  child: TextWidget(
                                    text:
                                        "Data Loss Prevention(DLP)\nData Encryption",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: "Application Security",
                                  style: GoogleFonts.montserrat(
                                      fontSize: size.width * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.limeGreen),
                                ),
                                SizedBox(height: size.height * 0.015),
                                SizedBox(
                                  width: size.width * 0.15,
                                  child: TextWidget(
                                    text:
                                        "Mobile App Security, VA / PT,\nDev Ops Security, Cloud Security,\nWeb Application Security Database Security",
                                    style: GoogleFonts.montserrat(
                                        fontSize: size.width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  /*
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        child: Text(
                          'Latest Skills and Tech ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 58,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('PROGRAMMING LANGUAGES',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white)),
                                Text(
                                  'Proficiency in java , Groovy on Grails, and Ruby on Rails for \n versatile application development',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 20),
                                Text('WEB PROGRAMMING LANGUAGES',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white)),
                                Text(
                                    'Expertise in React,Angular.js,and Node.js for creating\ndynamic,interactive web solutions.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w100,
                                        color: Colors.white)),
                                SizedBox(height: 30),
                                Text('PROGRAMMING LANGUAGES',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white)),
                                Text(
                                  'Proficiency in java , Groovy on Grails, and Ruby on Rails for \n versatile application development',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('DATABASES',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white)),
                              Text(
                                'Advanced knowledge in MYSQL,MongoDB,Elasticsearch,\ncassandra,Redis<dynamoDB,and Hadoop for robst data\nmanagement solutions',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 20),
                              Text('SCRIPTING LANGUAGES',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white)),
                              Text(
                                  'Skillful application of javascript,Python,Groovy Script,and\nShell Script for process automation and customization.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white)),
                              SizedBox(height: 30),
                              Text('BUILD / CI TOOLS',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white)),
                              Text(
                                'Utilizing Gradle,Maven,AWS CLI,and Docker for sfficient\nbuild automation and continuous integration.',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
*/
                  const SizedBox(height: 100),
                  const Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Our Work',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const service(),
                  const SizedBox(height: 25),
                  const Containe(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  const CustomWidget(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                      vertical: size.height * 0.05,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Connect with us!",
                          style: TextStyle(
                              fontSize: size.width * 0.05, color: Colors.white),
                        ),
                        const SizedBox(height: 20),
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
                                          fontSize: size.width * 0.04,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "Let's kick-start the conversation and build stuff\npeople will love.",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: size.width * 0.023,
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
                                    key: _formKey,
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          controller: _nameController,
                                          decoration: const InputDecoration(
                                            hintText: 'Name',
                                            hintStyle:
                                                TextStyle(color: Colors.white),
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
                                          style: const TextStyle(color: Colors.white),
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
                                          controller: _emailController,
                                          decoration: const InputDecoration(
                                            hintText: 'Email',
                                            hintStyle:
                                                TextStyle(color: Colors.white),
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
                                          style: const TextStyle(color: Colors.white),
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
                                          controller: _companyController,
                                          decoration: const InputDecoration(
                                            hintText: 'Company',
                                            hintStyle:
                                                TextStyle(color: Colors.white),
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
                                          style: const TextStyle(color: Colors.white),
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
                                          controller: _messageController,
                                          decoration: const InputDecoration(
                                            hintText: 'Message',
                                            hintStyle:
                                                TextStyle(color: Colors.white),
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
                                          style: const TextStyle(color: Colors.white),
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
                                            onPressed: _submitForm,
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
                        SizedBox(height: size.height * 0.08),
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
                        SizedBox(height: size.height * 0.2),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                ],
              ),
      ),
    );
  }
  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}
