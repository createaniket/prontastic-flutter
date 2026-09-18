import 'package:flutter/material.dart';
import 'package:prontastic/pages/aboutus_page.dart';
import 'package:prontastic/pages/career_page.dart';
import 'package:prontastic/pages/our_client_page.dart';
import 'package:prontastic/pages/services_page.dart';
import 'package:prontastic/pages/skill_and_tech.dart';
import 'package:prontastic/widget/contact_us.dart';

import '../pages/home/controller/home_provider.dart';
import '../pages/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static String? _lastRoute = "/";
  static Route<dynamic> generateRoutes(RouteSettings setting) {
    _lastRoute = setting.name;
    switch (setting.name) {
      case Routes.HOME:
        return MaterialPageRoute(
          settings: setting,
          builder: (_) => HomeView(
            controller: HomeProvider(),
          ),
        );
      case Routes.ABOUT_US:
        return MaterialPageRoute(
          settings: setting,
          builder: (_) => const AboutusPage(
          ),
        );
      case Routes.SERVICES:
        return MaterialPageRoute(
          settings: setting,
          builder: (_) => ServicesPage(
            // controller: HomeProvider(),
          ),
        );
      case Routes.SKILL_TECH:
        return MaterialPageRoute(
          settings: setting,
          builder: (_) => const SkillAndTech(
          ),
        );
      case Routes.OUR_CLIENTS:
        return MaterialPageRoute(
          settings: setting,
          builder: (_) => const OurClientPage(
          ),
        );
      case Routes.CAREER:
        return MaterialPageRoute(
          settings: setting,
          builder: (_) => CareerPage(
          ),
        );
      case Routes.CONTACT_US:
        return MaterialPageRoute(
          settings: setting,
          builder: (_) => ContactUs(
          ),
        );
      default:
        return MaterialPageRoute(
          settings: setting,
          builder: (_) => HomeView(
            controller: HomeProvider(),
          ),
        );
    }
  }

  static String? get lastRoute => _lastRoute;
}
