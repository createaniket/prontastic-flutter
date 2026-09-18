
import 'package:flutter/material.dart';
import 'package:prontastic/constants/app_colors.dart';

const kPadding = 8.0; 

enum SnackType { error, warning, info }

class SnackProvider extends ChangeNotifier {
  String _message = '';
  SnackType _type = SnackType.info;

  String get message => _message;
  SnackType get type => _type;

  void showSnack(String message, SnackType type) {
    _message = message;
    _type = type;
    notifyListeners(); 
  }

  Color getSnackBarColor() {
    switch (_type) {
      case SnackType.error:
        return AppColors.lightPink;
      case SnackType.warning:
        return AppColors.amber;
      case SnackType.info:
      // ignore: unreachable_switch_default
      default:
        return AppColors.hotblue;
    }
  }

  Color getSnackBarTextColor() {
    return (_type == SnackType.error || _type == SnackType.info)
        ? AppColors.bgColor
        : AppColors.black;
  }
}

