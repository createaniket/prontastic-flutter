import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

class TextThree extends StatelessWidget {
  const TextThree({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isMobile = size.width < 600;


    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(
        left: size.width * 0.22,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About the Role",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: size.width * 0.026, color: Colors.white),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
              "The UX Design team is looking for a proactive, detail-oriented,and\ncollaborative UX Design intern to contribute to creating intutive and \nuser-friendly digital products.As an intern,you'll get hands-on\nexperience designing for real-world application and collaborating with\na multidisplinary team of experts.",
              textAlign: TextAlign.start,
              style:
                  TextStyle(fontSize: size.width * 0.015, color: Colors.white)),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
              "Here's what you should know if you want to be a UX Design intern at\nProntastic:",
              textAlign: TextAlign.start,
              style:
                  TextStyle(fontSize: size.width * 0.015, color: Colors.white)),
          SizedBox(
            height: size.height * 0.025,
          ),
          Text(
            "On any given day , you might-",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: size.width * 0.026, color: Colors.white),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildBulletPoint(
                  'Assist in creating wireframes, prototypes, and user flows to support \nproduct and feature design.',
                  context),
              buildBulletPoint(
                  'Conduct user research, usability testing, and data analysis to inform \ndesign decisions.',
                  context),
              buildBulletPoint(
                  'Collaborate with designers, developers, and product managers to \ncreate cohesive user experiences.',
                  context),
              buildBulletPoint(
                  'Help develop and maintain design systems to ensure consistency \nacross all platforms.',
                  context),
              buildBulletPoint(
                  'Participate in brainstorming sessions and contribute fresh ideas to \nenhance user interaction.',
                  context),
              buildBulletPoint(
                  'Present design concepts and research findings to internal teams \nand stakeholders.',
                  context),
              buildBulletPoint(
                  'Stay updated on industry trends and best practices in UX/UI design.',
                  context),
            ],
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            "The Ideal Person",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: size.width * 0.026, color: Colors.white),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildBulletPoint(
                  'Has a strong understanding of UX/UI design principles, including \nuser research, wireframing, prototyping, and usability testing.',
                  context),
              buildBulletPoint(
                  'Is proficient in design tools such as Figma, Adobe Creative Suite \n(Illustrator, Photoshop, XD), and collaboration platforms like Miro or \nFigJam.',
                  context),
              buildBulletPoint(
                  'Has a solid grasp of responsive design and designing for both \nmobile and web platforms.',
                  context),
              buildBulletPoint(
                  'Is detail-oriented with a strong focus on creating intuitive and user-\nfriendly designs.',
                  context),
              buildBulletPoint(
                  'Thrives in a collaborative team environment and is open to feedback \nand learning.',
                  context),
              buildBulletPoint(
                  'Has excellent communication skills to articulate design decisions \neffectively.',
                  context),
              buildBulletPoint(
                  'Is adaptable and eager to work on multiple projects in a fast-paced \nenvironment.',
                  context),
            ],
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            "You Bring",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: size.width * 0.026, color: Colors.white),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildBulletPoint(
                  'A portfolio showcasing UX/UI design projects, including wireframes, \nprototypes, and user research insights.',
                  context),
              buildBulletPoint(
                  'Strong organizational skills and attention to detail.',
                  context),
              buildBulletPoint(
                  'An eagerness to learn and grow within the field of UX design.',
                  context),
              buildBulletPoint(
                  'Basic understanding of HTML/CSS is a plus.', context),
              buildBulletPoint(
                  'Proficiency in English (verbal and written).', context),
            ],
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            "Diversity at Prontastic",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: size.width * 0.026, color: Colors.white),
          ),
          Text(
              "Prontastic, we celebrate diversity and are commitment to creating an\ninclusive environment for all employees and interns. No matter your\nbackground,identity, or experiences,you're welcome here. if you need\naccommodations or support during the interview process, please don't\nhesitate to let us know.",
              textAlign: TextAlign.start,
              style:
                  TextStyle(fontSize: size.width * 0.015, color: Colors.white)),
          SizedBox(
            height: size.height * 0.015,
          ),
          Text(
              "Ready to design the ffuture? Join us as a UX Design intern and grow\nyour career at Prontastic!",
              textAlign: TextAlign.start,
              style: GoogleFonts.montserrat(
                  fontSize: size.width * 0.015, color: Colors.white)),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
            ),
            width: size.width,
            height: isMobile ? size.height*0.6 : size.height*1.5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
              child: Text(
                "Apply with Linkedin,\nAdd linkedin application form\nvia linkedin API",
                style: TextStyle(
                    fontSize: size.width * 0.026, color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget buildBulletPoint(String text, BuildContext context) {
  final size = MediaQuery.of(context).size;

  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('•', style: TextStyle(fontSize: size.width*0.02, color: Colors.white)),
      SizedBox(
        width: size.width * 0.01,
      ),
      Expanded(
        child: Text(text,
            textAlign: TextAlign.start,
            style:
                TextStyle(fontSize: size.width * 0.018, color: Colors.white)),
      ),
    ],
  );
}
