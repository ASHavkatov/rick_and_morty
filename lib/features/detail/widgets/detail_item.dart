import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';


class DetailItem extends StatelessWidget {
  const DetailItem({super.key, required this.name, required this.type});

  final String name, type;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${type}:  ${name}",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        Divider(color: AppColors.textColor),
      ],
    );
  }
}