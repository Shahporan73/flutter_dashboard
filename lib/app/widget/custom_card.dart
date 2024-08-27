import 'package:flutter/material.dart';
import 'package:react_hub/resource/color_collection/common_colors.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  CustomCard({super.key, required this.child, this.color, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: color ?? cardBackgroundColor,
      ),
      child: child,
      padding: padding ?? EdgeInsets.all(12.0),
    );
  }
}
