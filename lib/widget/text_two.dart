import 'package:flutter/material.dart';

class TextTwo extends StatelessWidget {
  const TextTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.025),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Prontastic",
            style: TextStyle(fontSize: size.width * 0.026, color: Colors.white),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
              "Prontastic is a leading technology solutions company, specializing in\ncutting-edge software development,UI/UX design, IT services, and\ndigital transformation for businesses across the globe. We aim to\nempower our clients by delivering innovateive solutions that shape how\nusers interact with brands and technology.",
              style:
                  TextStyle(fontSize: size.width * 0.015, color: Colors.white)),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
              "Our team combines creativity and technical expertise to deliver\nexceptional user experiences, At Prontastic, you'll work with a collective\nof passionate individuals dedicated to pushing the boundaries of\ndesign and technology.",
              style:
                  TextStyle(fontSize: size.width * 0.015, color: Colors.white)),
        ],
      ),
    );
  }
}
