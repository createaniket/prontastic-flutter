import 'package:flutter/material.dart';
import 'package:prontastic/pages/what_wew_do_footer.dart';
import 'package:prontastic/themes/custom_text_theme.dart';
import 'package:prontastic/widget/text_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/app_colors.dart';
import '../constants/app_images.dart';

class MobileViewForm extends StatelessWidget {
  const MobileViewForm({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
    return Form(
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
          SizedBox(height: size.height * 0.08),
          const Align(
            alignment: Alignment.bottomLeft,
            child: NewFooter(),
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
