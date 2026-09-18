// import 'package:flutter/material.dart';
// import 'package:prontastic/constants/app_colors.dart';
// import 'package:prontastic/widget/text_widget.dart';

// class ContactUs extends StatelessWidget {
//   const ContactUs({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(30),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const TextWidget(text:"Contact Us", style: TextStyle(fontSize: 40, color: AppColors.bgColor,), ),

//            const SizedBox(height: 30),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // First Column with introductory text
//               Expanded(
//                 flex: 1,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const TextWidget(text:"Your journey begins here!",   style: TextStyle(color: AppColors.bgColor, fontSize: 40), ),

//                     const SizedBox(height: 20),
//                     const TextWidget(text:
//                       "Let's kick-start the conversation and build stuff\npeople will love.",
//                       style: TextStyle(color: AppColors.bgColor, fontSize: 25),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(width: 20), // Space between columns

//               // Second Column with form fields
//               Expanded(
//                 flex: 2,
//                 child: Column(
//                   children: [
//                     // Name TextField
//                     const TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Name',
//                         hintStyle: TextStyle(color: AppColors.bgColor),
//                         border: OutlineInputBorder(),
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: AppColors.bgColor,),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.pink, width: 2.0),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),

//                     // Email TextField
//                     const TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Email',
//                         hintStyle: TextStyle(color: AppColors.bgColor),
//                         border: OutlineInputBorder(),
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: AppColors.bgColor),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.pink, width: 3.0),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),

//                     // Company TextField
//                     const TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Company',
//                         hintStyle: TextStyle(color: AppColors.bgColor),
//                         border: OutlineInputBorder(),
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: AppColors.bgColor),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.pink, width: 3.0),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),

//                     // Message TextField
//                     const TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Message',
//                         hintStyle: TextStyle(color: AppColors.bgColor),
//                         border: OutlineInputBorder(),
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: AppColors.bgColor),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.pink, width: 3.0),
//                         ),
//                       ),
//                       maxLines: 10,
//                     ),
//                     const SizedBox(height: 20),

//                     // Submit Button
//                     SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           foregroundColor: AppColors.black,
//                           backgroundColor: AppColors.limeGreen,
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 10, vertical: 10),
//                         ),
//                         child: const TextWidget(text:
//                           "Submit",
//                           style: TextStyle(
//                             fontSize: 30,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prontastic/constants/app_images.dart';
import 'package:prontastic/pages/mobile_view_form.dart';
import 'package:prontastic/themes/custom_text_theme.dart';
import 'package:prontastic/widget/text_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/app_colors.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<ContactUs> {
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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isMobile = size.width < 600;

    return Scaffold(
        backgroundColor: AppColors.black,
        body: SingleChildScrollView(
          child: isMobile
              ? Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "Help us, help you.",
                        style: context.displayMedium
                            .copyWith(fontSize: size.width * 0.05),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      TextWidget(
                        text: "Contact us today!",
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
                        height: size.height * 0.05,
                      ),
                      const MobileViewForm()
                    ],
                  ),
                )
              : Column(children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 30, left: size.width * 0.03, right: 30),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.start,
                          "Contact Us",
                          style: TextStyle(fontSize: 80, color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0, bottom: 30, left: size.width * 0.03, right: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your journey begins here!",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 50),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Let's kick-start the conversation and build stuff\npeople will love.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Address: A-113, Urbtech Trade\nCentre, Sector 132, Noida\nContact No:+918800134411 \nEmail:sales@prontastic.com",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ],
                        ),
                        const SizedBox(width: 80),
                        Expanded(
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: _nameController,
                                  decoration: const InputDecoration(
                                    hintText: 'Name',
                                    hintStyle: TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 2.0),
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
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 3.0),
                                    ),
                                  ),
                                  style: const TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
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
                                    hintStyle: TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 3.0),
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
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 3.0),
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
                                const SizedBox(height: 20),
                                SizedBox(
                                  width: 600,
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
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.all(size.width * 0.03),
                    child: const Row(
                      children: [
                        Text(
                          "Footer",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.all(
                      size.width * 0.03,
                    ),
                    child: Row(
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
                  ),
                ]),
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
