

import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String title;
  final String imagePath;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width  * 0.5, 
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width  * 0.015, 
        vertical: MediaQuery.of(context).size.height * 0.01, 
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width  * 0.5, 
              height: MediaQuery.of(context).size.height  * 0.8, 
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height  * 0.01), 
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width  * 0.02, 
              color: Colors.white,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.005),
          Text(
            title,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width  * 0.02, 
              color: Colors.white70,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height  * 0.01),
        ],
      ),
    );
  }
}
