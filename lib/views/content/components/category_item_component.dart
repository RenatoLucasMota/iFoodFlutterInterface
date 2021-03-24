import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/core/theme/app_colors.dart';
import 'package:ifood_flutter_clone/core/theme/app_typography.dart';
import 'package:ifood_flutter_clone/models/category.dart';

class CategoryItemComponent extends StatelessWidget {
  final Category category;


  const CategoryItemComponent({Key key, @required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          category.picture,
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Text(
            category?.name?? '',
            style: AppTypography.small(context).copyWith(color: AppColors.grey),
          ),
        ),
      ],
    );
  }
}
