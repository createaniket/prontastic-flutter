import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/app_colors.dart';

enum SnackType { error, warning, info }

class UtilsProvider extends ChangeNotifier {
  void setStatus(BuildContext context, String code,
      {String? message, SnackType snackType = SnackType.info}) {
    final text = message ?? '';
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '$code $text',
          style: TextStyle(
            color: _getSnackBarTextColor(snackType),
            fontWeight: FontWeight.w500,
          ),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: _getSnackBarColor(snackType),
      ),
    );
  }

  Uint8List dataFromBase64String(String base64String) {
    return base64Decode(base64String);
  }

  void setSystemOverlayStyle() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.limeGreen,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
  }

  Widget getLoadingUI(BuildContext context) {
    return Container(
      color: AppColors.limeGreen.withOpacity(0.3),
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: const Center(
        child: SizedBox(
          width: 60,
          height: 60,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(AppColors.limeGreen),
            strokeWidth: 2.2,
          ),
        ),
      ),
    );
  }

  Color _getSnackBarColor(SnackType type) {
    switch (type) {
      case SnackType.error:
        return Colors.red;
      case SnackType.warning:
        return Colors.orange;
      case SnackType.info:
      return AppColors.limeGreen;
    }
  }

  Color _getSnackBarTextColor(SnackType type) {
    return (type == SnackType.error || type == SnackType.info)
        ? Colors.white
        : Colors.black;
  }
}
