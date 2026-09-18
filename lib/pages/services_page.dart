import 'package:flutter/material.dart';
import 'package:prontastic/constants/app_images.dart';
import 'package:prontastic/themes/custom_text_theme.dart';
import 'package:prontastic/widget/footer.dart';
import 'package:prontastic/widget/projectcard.dart';
import '../constants/app_colors.dart';
import '../widget/text_widget.dart';
import 'mobile_view_form.dart';

class ServicesPage extends StatefulWidget {
  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  final List<Map<String, String>> services = [
    {
      'title': 'Core Application Services',
    },
    {
      'title': 'Security Solutions',
    },
    {
      'title': 'Latest Technology Solutions',
    },
    {
      'title': 'Skills and Technology Expertise',
    },
  ];

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
                  Image.asset(
                    AppImages.servicespagefirstimg,
                    fit: BoxFit.cover,
                    width: size.width,
                  ),
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, bottom: 20),
                    child: SizedBox(
                      width: size.width * 0.5,
                      child: Text(
                        "We integrate specialized expertise with advanced technology to craft solutions that redefine how users interact with brands, creating seamless experiences across their entire digital ecosystem.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.022,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                    ),
                    alignment: AlignmentDirectional.topEnd,
                    child: Column(
                      children: [
                        SizedBox(
                          width: size.width * 0.5,
                          child: Text(
                            "Prontastic partners with clients across IT Consulting, Software Development, Application Design, IT Security, and Cloud Solutions. We also specialize in Managed Services, AI & Machine Learning, Data Center Solutions, and ITSM/BPM.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.020,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: size.width * 0.5,
                          child: Text(
                            "By integrating expertise across these domains, we craft cohesive technology ecosystems that drive innovation, optimize operations, and deliver measurable value for our clients",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.020,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      height: size.height * 0.3,
                      child: const Row(
                        spacing: 10,
                        children: [
                          ProjectCard(imagePath: 'assets/images/Frame 198.png'),
                          ProjectCard(
                              imagePath: 'assets/images/Frame 199 (1).png'),
                          ProjectCard(imagePath: 'assets/images/Frame 200.png'),
                          ProjectCard(imagePath: AppImages.redColorImage),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'OUR SERVICES',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Column(
                          children: List.generate(
                              services.length,
                              (index) => Column(
                                    children: [
                                      ListTile(
                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Text(
                                            services[index]['title']!,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                              fontSize: size.width * 0.04,
                                            ),
                                          ),
                                        ),
                                        trailing:
                                            const Icon(Icons.arrow_downward),
                                      ),
                                      const Divider(),
                                    ],
                                  )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                ],
              )
            : Column(children: [
                Image.asset(
                  AppImages.servicespagefirstimg,
                  fit: BoxFit.cover,
                  width: size.width * 1,
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
                            "We integrate specialized expertise with \nadvanced technology to craft solutions \nthat redefine how users interact with \nbrands, creating seamless experiences \nacross their entire digital ecosystem.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
                            width: 604,
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
                                "Prontastic partners with clients across IT \nConsulting, Software Development, Application \nDesign, IT Security, and Cloud Solutions. We also \nspecialize in Managed Services, AI & Machine \nLearning, Data Center Solutions, and ITSM/BPM.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "By integrating expertise across these domains, \nwe craft cohesive technology ecosystems that \ndrive innovation, optimize operations, and deliver \nmeasurable value for our clients",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    bottom: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.02,
                          left: MediaQuery.of(context).size.width * 0.02,
                        ),
                        child: const ProjectCard(
                            imagePath: 'assets/images/Frame 198.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.02,
                          // left: MediaQuery.of(context).size.width * 0.02,
                        ),
                        child: const ProjectCard(
                            imagePath: 'assets/images/Frame 199 (1).png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.02,
                          // left: MediaQuery.of(context).size.width * 0.02,
                        ),
                        child: const ProjectCard(
                            imagePath: 'assets/images/Frame 200.png'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(),
                        child: ProjectCard(imagePath: AppImages.redColorImage),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 30, top: 20),
                        child: Text(
                          'OUR SERVICES',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Expanded(
                        child: ListView.builder(
                          itemCount: services.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: ListTile(
                                    title: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, bottom: 0),
                                      child: Text(
                                        services[index]['title']!,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                            fontSize: 25),
                                      ),
                                    ),
                                    trailing: const Icon(
                                      Icons.arrow_downward,
                                    ),
                                  ),
                                ),
                                const Divider(),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const Footer(),
                SizedBox(
                  height: size.height * 0.1,
                ),
              ]),
      ),
    );
  }
}
