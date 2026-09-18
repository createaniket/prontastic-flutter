import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'pages/home/controller/home_provider.dart';
import 'routes/app_pages.dart';
import 'themes/themes.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => HomeProvider(),
        lazy: true,
      ),
    ], child: const ProntasticTwo()),
  );
}

class ProntasticTwo extends StatelessWidget {
  const ProntasticTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeProvider(),
      builder: (context, child) {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).appBarTheme.backgroundColor,
        ));
        SystemChrome.setEnabledSystemUIMode(
          SystemUiMode.manual,
          overlays: [
            SystemUiOverlay.top,
          ],
        );
        return MaterialApp(
          // showPerformanceOverlay: true,
          title: "Application",
          initialRoute: Routes.HOME,
          theme: Themes().lightTheme,
          darkTheme: Themes().darkTheme,
          onGenerateRoute: AppPages.generateRoutes,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [],
          builder: (context, child) {
            return Stack(children: [
              MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                child: GestureDetector(
                    onTap: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: child),
              ),
            ]);
          },
        );
      },
    );
  }
}

