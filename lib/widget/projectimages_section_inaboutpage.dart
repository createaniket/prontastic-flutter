import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prontastic/constants/app_images.dart';
import 'package:prontastic/widget/projectcard.dart';

class projectImages extends StatefulWidget {
  @override
  _projectImagesState createState() => _projectImagesState();
}

class _projectImagesState extends State<projectImages> {
   List<String> projectImage = [
  'assets/images/Frame 198.png',
  'assets/images/Frame 199 (1).png',
  'assets/images/Frame 200.png',
     AppImages.redColorImage,
   'assets/images/Frame 198.png',
  'assets/images/Frame 199 (1).png',
  'assets/images/Frame 200.png',
     AppImages.redColorImage
];
  final ScrollController _scrollController = ScrollController();
  int _scrollDirection = 1; 
  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    Future.delayed(Duration(seconds: 2), () {
      Timer.periodic(Duration(milliseconds: 100), (timer) {
        if (_scrollController.hasClients) {
          double maxScroll = _scrollController.position.maxScrollExtent;
          double currentScroll = _scrollController.position.pixels;

          if (currentScroll >= maxScroll) {
            _scrollDirection = -1;
          } else if (currentScroll <= 0) {
            _scrollDirection = 1;
          }

          _scrollController.animateTo(
            currentScroll + (_scrollDirection * 5),
            duration: Duration(milliseconds: 100),
            curve: Curves.linear,
          );
        }
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.02,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3, 
        child: ListView.builder(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: projectImage.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                left: index == 0 ? MediaQuery.of(context).size.width * 0.02 : 0,
                right: MediaQuery.of(context).size.width * 0.02,
              ),
              child: ProjectCard(imagePath: projectImage[index]),
            );
          },
        ),
      ),
    );
  }
}
