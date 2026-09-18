import 'package:flutter/material.dart';
import 'package:prontastic/constants/app_colors.dart';
import '../../constants/app_images.dart';

class HorizontalImageGrid extends StatelessWidget {
  final List<String> myImages = [
    AppImages.oneLogo,
    AppImages.twoLogo,
    AppImages.threeLogo,
    AppImages.fourLogo,
    AppImages.fiveLogo,
    AppImages.sixLogo,
    AppImages.sevenLogo,
    AppImages.eightLogo,
    AppImages.nineLogo,
    AppImages.tenLogo,
    AppImages.elevenLogo,
    AppImages.twelveLogo,
    AppImages.thirteenLogo,
    AppImages.fourteenLogo,
    AppImages.fifteenLogo,
    AppImages.sixteenLogo,
    AppImages.seventeenLogo,
    AppImages.eighteenLogo,
    AppImages.nineteenLogo,
    AppImages.twentyLogo,
    AppImages.twentyOneLogo,
    AppImages.twentyTwoLogo,
    AppImages.twentyThreeLogo,
    AppImages.twentyFourLogo,
    AppImages.twentyFiveLogo,
    AppImages.twentySixLogo,
    AppImages.twentySevenLogo,
    AppImages.twentyEightLogo,
    AppImages.twentyNineLogo,
    AppImages.thirtyLogo,
    AppImages.thirtyOneLogo,
    AppImages.thirtyTwoLogo,
    AppImages.thirtyThreeLogo,
    AppImages.thirtyFourLogo,
    AppImages.thirtyFiveLogo,
    AppImages.thirtySixLogo,
    AppImages.thirtySevenLogo,
    AppImages.thirtyEightLogo,
    AppImages.thirtyNineLogo,
    AppImages.forty,
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isMobile = size.width < 600;

    return SizedBox(
      height: size.height * 0.4,
      child: isMobile
          ? Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width*0.05),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myImages.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 10,
                  mainAxisSpacing: size.height * 0.02,
                  crossAxisSpacing: size.width * 0.015,
                  childAspectRatio: 0.35, // Width / Height (adjust for shape)
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        myImages[index],
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: AppColors.white,
                          child: const Icon(Icons.broken_image),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myImages.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: size.height * 0.02,
                  crossAxisSpacing: size.width * 0.012,
                  childAspectRatio: 0.35, // Width / Height (adjust for shape)
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        myImages[index],
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: AppColors.white,
                          child: const Icon(Icons.broken_image),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
    );
  }
}
