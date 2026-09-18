import 'package:flutter/material.dart';

class Image_one extends StatelessWidget {
  const Image_one({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Our Clients,Partners and Colaborates",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.black
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/image 31.png",
                height: 200,width: 97.82,),
                Image.asset("assets/images/image 32.png",
                height: 200,width: 97.82,
                ),
                Image.asset("assets/images/image 33.png",
                height: 200,width: 97.82,),
                Image.asset("assets/images/image 34.png",
                height: 200,width: 97.82,),
                Image.asset("assets/images/image 35.png",
                height: 200,width: 97.82,),
              ],
            )
          ],
        ),
      ),
    );
  }
}