
import 'package:flutter/material.dart';
import 'package:prontastic/controller/hoverable_divider_controller.dart';
import 'package:prontastic/widget/text_widget.dart';

class HoverableRowWithDivider extends StatefulWidget {
  final String text;
  final double spacing; 

  const HoverableRowWithDivider({
    Key? key,
    required this.text,
    required this.spacing, 
  }) : super(key: key);

  @override
  _HoverableRowWithDividerState createState() => _HoverableRowWithDividerState();
}

class _HoverableRowWithDividerState extends State<HoverableRowWithDivider> {
  late HoverableController _hoverableController;

  @override
  void initState() {
    super.initState();
    _hoverableController = HoverableController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Column(
      children: [
        MouseRegion(
          onEnter: (_) => setState(() => _hoverableController.hoverChanged(true)),
          onExit: (_) => setState(() => _hoverableController.hoverChanged(false)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    text: widget.text, 
                    style: TextStyle(
                      color: _hoverableController.textColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: widget.spacing), 
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    transform: Matrix4.translationValues(
                      _hoverableController.iconPosition,
                      0,
                      0,
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: _hoverableController.iconColor,
                      size: 22,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        MouseRegion(
          onEnter: (_) => setState(() => _hoverableController.hoverChanged(true)),
          onExit: (_) => setState(() => _hoverableController.hoverChanged(false)),
          child: SizedBox(
            width: size.width * 0.4,
            child: Divider(
              color: _hoverableController.dividerColor,
              thickness: 2,
            ),
          ),
        ),
      ],
    );
  }
}
