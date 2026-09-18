import 'package:flutter/material.dart';

class JovDescriptionTextOne extends StatelessWidget {
  const JovDescriptionTextOne({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.04, vertical: size.height * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "User Experience (UX) Intern",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: size.width * 0.05,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          Text(
            "NOIDA, Delhi NCR, Part time",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: size.width * 0.035,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
