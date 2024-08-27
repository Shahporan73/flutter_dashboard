// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:react_hub/resource/color_collection/common_colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: cardBackgroundColor,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0)
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Theme.of(context).primaryColor)
        ),

        contentPadding: EdgeInsets.symmetric(vertical: 5),
        hintText: 'Search',
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
          size: 21,
        )
      ),

    );
  }
}
