import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTypography {
  static TextStyle bodyText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1;
  }

  static TextStyle small(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 12);
  }

  static TextStyle bodyTextBold(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1.copyWith(
          fontWeight: FontWeight.w500,
        );
  }

  static TextStyle tabBarStyle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyText1
        .copyWith(color: AppColors.primaryColor, fontWeight: FontWeight.w700);
  }

  static TextStyle filterItemStyle(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1.copyWith(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.normal,
        fontSize: 13);
  }

  static TextStyle localTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 13,
        );
  }
}
