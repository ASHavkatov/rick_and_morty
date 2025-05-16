import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class DetailText extends StatelessWidget {
  const DetailText({super.key, required this.location, required this.seen});

  final String location, seen;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Last known location:",
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        Container(
          width: 180,
          child: Text(
            location,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18,
              height: 1
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "First seen in:",
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        Container(
          width: 180,
          child: Text(
            seen,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}