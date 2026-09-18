import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prontastic/constants/app_images.dart';
import 'package:prontastic/pages/job_description.dart';
import 'package:prontastic/themes/custom_text_theme.dart';
import 'package:prontastic/widget/footer.dart';

import '../constants/app_colors.dart';
import '../widget/text_widget.dart';
import 'mobile_view_form.dart';

class CareerPage extends StatelessWidget {
  final List<String> jobTitles = [
    /*"Web Development Intern",
    "Human Resource Manager",
    "User Experience (UX) Intern",
    "Senior UX Designer",
    "React Developer",*/
    "Sales Executive",
  ];

  final List<Map<String, String>> reasons = [
    {
      'title': 'WE ARE VISION-DRIVEN',
      'description':
          'At Prontastic, our vision is to empower businesses with cutting-edge technology and innovative solutions while building a more inclusive and forward-thinking digital future.',
    },
    {
      'title': 'WE ARE ADAPTIVE',
      'description':
          'Our approach to work is rooted in flexibility. From embracing new ideas to tailoring our strategies, we ensure that every employee has the environment they need to thrive.',
    },
    {
      'title': 'WE ARE LISTENERS',
      'description':
          'Prontastic thrives on a culture of open dialogue and feedback. We believe the best results come when every voice is heard and respected.',
    },
    {
      'title': 'WE CELEBRATE \nDIVERSITY AND\nINCLUSION',
      'description':
          'Diversity lies at the heart of Prontastic’s culture. We embrace differences in background, experiences, and perspectives, ensuring that everyone has the opportunity to grow and succeed.',
    },
    {
      'title': 'WE ARE DRIVEN BY \nEXCELLENCE',
      'description':
          'At Prontastic, we hold ourselves to the highest standards, continuously striving to exceed expectations and make a lasting impact for our clients and our community.',
    },
  ];

  CareerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isMobile = size.width < 600;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: isMobile
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.careerpageimg,
                    fit: BoxFit.cover,
                    width: size.width,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.04,
                        vertical: size.height * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width * 0.7,
                          child: TextWidget(
                            text: "Don’t just work here. Belong here.",
                            style: GoogleFonts.montserrat(
                              color: AppColors.white,
                              fontSize: size.width * 0.06,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        SizedBox(
                          width: size.width * 0.65,
                          child: TextWidget(
                            text:
                                "At Prontastic, we aspire to reflect the diverse world we serve, bringing together talent from varied backgrounds, skill sets, and experiences. We believe in fostering an inclusive environment where you can bring your authentic self to work. By embracing our differences and collaborating across perspectives, we create innovative solutions and impactful ideas that drive success.",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: size.width * 0.02,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            width: size.width * 0.61,
                            child: TextWidget(
                              text:
                                  "Whether you thrive in a dynamic office setting or prefer the flexibility of remote work, we’d love to have you on our team. Explore our open positions and join us in shaping the future of technology—one solution at a time.",
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: size.width * 0.02,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: size.height * 0.6,
                    color: Colors.white,
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Why work at Prontastic?',
                          style: TextStyle(
                            fontSize: size.width * 0.04,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Expanded(
                          child: Column(
                            children: [
                              for (int index = 0;
                                  index < reasons.length;
                                  index++) ...[
                                ReasonTile(
                                  title: reasons[index]['title']!,
                                  description: reasons[index]['description']!,
                                ),
                                if (index != reasons.length - 1)
                                  Divider(
                                    color: Colors.grey[300],
                                    thickness: 1,
                                    // height: size.height*0.03,
                                  ),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.04,
                        vertical: size.height * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: 'Open Roles',
                          style: GoogleFonts.montserrat(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        SizedBox(
                          width: size.width * 0.8,
                          child: Text(
                            'Interested in working with us? Take a look at our current full-time openings across our global offices. Whether your career path to a role you\'re interested in is traditional or not, please apply. We want to hear from all enthusiastic candidates.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: size.width * 0.02,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: jobTitles.map((jobTitle) {
                      int index = jobTitles.indexOf(jobTitle);
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const JobDescriptionPage()),
                                    );
                                  },
                                  child: Text(
                                    jobTitle,
                                    style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: size.width * 0.03),
                                  ),
                                ),
                                const Icon(Icons.arrow_outward,
                                    color: Colors.greenAccent),
                              ],
                            ),
                          ),
                          if (index != jobTitles.length + 1)
                            Divider(color: Colors.grey[800], thickness: 1),
                        ],
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.04,
                        vertical: size.height * 0.03),
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
                children: [
                  Image.asset(
                    AppImages.careerpageimg,
                    fit: BoxFit.cover,
                    width: size.width,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 30, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Don’t just work here.\nBelong here.",
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 90,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "At Prontastic, we aspire to reflect the diverse world we serve, bringing \ntogether talent from varied backgrounds, skill sets, and experiences. \nWe believe in fostering an inclusive environment where you can bring \nyour authentic self to work. By embracing our differences and \ncollaborating across perspectives, we create innovative solutions and \nimpactful ideas that drive success.",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21.5,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 710,
                            )
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Whether you thrive in a dynamic office setting or prefer \nthe flexibility of remote work, we’d love to have you on \nour team. Explore our open positions and join us in \nshaping the future of technology—one solution at a \ntime.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21.5,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: size.height * 1.25,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Why work at Prontastic?',
                            style: TextStyle(
                              fontSize: 90,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Expanded(
                            child: Column(
                              children: [
                                for (int index = 0;
                                    index < reasons.length;
                                    index++) ...[
                                  ReasonTile(
                                    title: reasons[index]['title']!,
                                    description: reasons[index]['description']!,
                                  ),
                                  if (index != reasons.length - 1)
                                    Divider(
                                      color: Colors.grey[300],
                                      thickness: 1,
                                      height: 32,
                                    ),
                                ],
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Open Roles',
                          style: TextStyle(
                            fontSize: 90,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.55,
                          child: const Text(
                            'Interested in working with us? Take a look at our current full-time openings across our global offices. Whether your career path to a role you\'re interested in is traditional or not, please apply. We want to hear from all enthusiastic candidates.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: jobTitles.map((jobTitle) {
                      int index = jobTitles.indexOf(jobTitle);
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 50, right: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const JobDescriptionPage()),
                                    );
                                  },
                                  child: Text(
                                    jobTitle,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 40),
                                  ),
                                ),
                                const Icon(Icons.arrow_outward,
                                    color: Colors.greenAccent),
                              ],
                            ),
                          ),
                          if (index != jobTitles.length + 1)
                            Divider(color: Colors.grey[800], thickness: 1),
                        ],
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 80,
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

class ReasonTile extends StatelessWidget {
  final String title;
  final String description;

  const ReasonTile({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.028,
                  color: Colors.black),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 3,
            child: Text(
              description,
              style: TextStyle(
                fontSize: size.width * 0.015,
                color: Colors.grey[700],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
