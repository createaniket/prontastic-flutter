import 'package:flutter/material.dart';

class HoverableController {
  Color _textColor = Colors.white;
  Color _iconColor = Colors.white;
  double _iconPosition = 1;
  Color _dividerColor = Colors.white;
  bool _isHovered = false;
 

  Color get textColor => _textColor;
  Color get iconColor => _iconColor;
  double get iconPosition => _iconPosition;
  Color get dividerColor => _dividerColor;
  

  void hoverChanged(bool isHovered) {
    _isHovered = isHovered;

    if (_isHovered) {
      _textColor = Colors.grey;
      _iconColor = Colors.green;
      _iconPosition = -10;
      _dividerColor = Colors.green; 
    } else {
      _textColor = Colors.white;
      _iconColor = Colors.white;
      _iconPosition = 0;
      _dividerColor = Colors.white; 
    }
  }
}
