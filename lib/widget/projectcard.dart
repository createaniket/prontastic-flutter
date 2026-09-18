import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String imagePath;

  const ProjectCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Image.asset(
        imagePath,
        height: 350.0,
        width: 285.0,
        fit: BoxFit.cover,
      ),
    );
  }
}