import 'package:flutter/material.dart';
import 'package:prontastic/pages/header/header_section.dart';
import '../../../constants/app_colors.dart';
import '../../../widget/responsive_widget.dart';
import '../controller/home_provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required HomeProvider controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: ResponsiveWidget(
        mobile: HeaderSection(),
        tablet: HeaderSection(),
        desktop: HeaderSection(),
      ),
    );
  }
}
