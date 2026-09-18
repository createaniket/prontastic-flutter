import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';
import '../widget/text_widget.dart';

class NewFooter extends StatelessWidget {
  const NewFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: "What We Do",
          style: GoogleFonts.montserrat(
              fontSize: size.width * 0.035, color: AppColors.limeGreen),
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
              fontSize: size.width * 0.025, color: AppColors.limeGreen),
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
                  text: "Unified Network\nSecurity & Management",
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
                    text: "Data Loss Prevention(DLP)\nData Encryption",
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
        )
      ],
    );
  }
}
