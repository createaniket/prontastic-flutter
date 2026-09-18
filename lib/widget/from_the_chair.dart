import 'package:flutter/material.dart';
import 'package:prontastic/constants/app_colors.dart';
import 'package:prontastic/widget/text_widget.dart';

class FromTheChair extends StatelessWidget {
  const FromTheChair({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.04, vertical: screenHeight * 0.003),
          child: TextWidget(
            text: 'From The Chair',
            style: TextStyle(
              color: AppColors.bgColor,
              fontSize: screenWidth * 0.03,
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.02),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const ChairCard(
                name: 'Prashant Kumar',
                title: 'Director - Technology Business',
                imagePath: 'assets/images/image 47.png',
              ),
              SizedBox(width: screenWidth * 0.01),
              const ChairCard(
                name: 'Nishant Kumar',
                title: 'Director',
                imagePath: 'assets/images/image 47.png',
              ),
              SizedBox(width: screenWidth * 0.01),
              const ChairCard(
                name: 'Pooja Singh',
                title: 'Director - Brand & Marketing',
                imagePath: 'assets/images/image 47.png',
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_circle_left_outlined,
                  color: Colors.white, size: 35),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.arrow_circle_right_outlined,
                  color: Colors.white, size: 35),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class ChairCard extends StatefulWidget {
  final String name;
  final String title;
  final String imagePath;

  const ChairCard({
    Key? key,
    required this.name,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  _ChairCardState createState() => _ChairCardState();
}

class _ChairCardState extends State<ChairCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isHovered ? const Color(0XFF9DFF50) : const Color(0XFF111111),
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.015),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'assets/images/Vector.png',
                            color: isHovered
                                ? Colors.black
                                : const Color(0XFF666666),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: widget.name,
                            style: TextStyle(
                              color: isHovered
                                  ? Colors.black
                                  : const Color(0XFF666666),
                              fontSize: screenWidth * 0.02,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextWidget(
                            text: widget.title,
                            style: TextStyle(
                              color: isHovered
                                  ? Colors.black
                                  : const Color(0XFF666666),
                              fontSize: screenWidth * 0.012,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: screenWidth * 0.003),
                  TextWidget(
                    text:
                        'Working with Prontastic has been an \nincredible experience. They truly listened to \nour needs and delivered a stunning design \nthat exceeded our expectations. We \ncouldn’t be happier with the final product.',
                    style: TextStyle(
                      color: isHovered ? Colors.black : const Color(0XFF666666),
                      fontSize: screenWidth * 0.010,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(width: screenWidth * 0.003),
            Padding(
              padding: EdgeInsets.only(
                  right: screenWidth * 0.01, bottom: screenWidth * 0),
              child: Image.asset(
                widget.imagePath,
                width: screenWidth * 0.08,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
