import 'package:flutter/material.dart';
import 'package:prontastic/constants/app_images.dart';

class ImageTwo extends StatelessWidget {
  const ImageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listofceoclientpage(),
        SizedBox(height: 30),
        listofceoclientpage(),
        SizedBox(height: 30),
        listofceoclientpage(),
       
     
      ],
    );
  }
}

class listofceoclientpage extends StatelessWidget {
  const listofceoclientpage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          child: Row(
            children: [
                 Image.asset(
             AppImages.aboutUsFemale,
           
               height: 578,width: 350,
          ),
              SizedBox(width: 30),
              Padding(
                padding: const EdgeInsets.only(top: 210),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
        
                    Text("Parul Kothari",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    )),
                 Text("CTO, Tech Care Solution",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                  color: Colors.white
                )),
                SizedBox(height: 20),
                 Text("Protastic IT Services has been a game-changer for our organization.\nTheir professionalism, timely delivery, annd tailored solutions have\nelevated our operational efficiency. We valueexpertise and look\nforward to a long-term collaboration",
                style: TextStyle(
                  fontSize: 24,
                    fontWeight: FontWeight.normal,
                  color: Colors.white
                ))
                  ],
                ),
              ),
             
            ],
          ),
          
        ),
      Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 210),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                                
                    
                    children: [
                      Text("Parul Kothari",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      )),
                             Text("CTO, Tech Care Solution",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w300,
                    color: Colors.white
                  )),
                  SizedBox(height: 20),
                   Text("Protastic IT Services has been a game-changer for our organization.\nTheir professionalism, timely delivery, annd tailored solutions have\nelevated our operational efficiency. We valueexpertise and look\nforward to a long-term collaboration",
                 textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 24,
                                fontWeight: FontWeight.normal,
                    color: Colors.white
                  ))
                    ],
                  ),
                ),
                SizedBox(width: 30),
                 Image.asset(
             AppImages.aboutUsFemale,
           
             height: 578,width: 350,
          ),
               
              ],
            ),
             
        ),
  
      ],
    );
      
  }
}