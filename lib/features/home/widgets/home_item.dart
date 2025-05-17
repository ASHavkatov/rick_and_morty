import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/colors.dart';
import 'detail_text.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeItem extends StatelessWidget {
  Color getStatusColor(String status) {
    if (status == "Alive") {
      return Colors.green;
    } else if (status == "Dead") {
      return Colors.red;
    } else {
      return Colors.grey;
    }
  }

  const HomeItem({
    super.key,
    required this.image,
    required this.name,
    required this.status,
    required this.species,
    required this.location,
    required this.seen,
    required this.onTap,
  });

  final String image, name, status, species, location, seen;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(13),
              topLeft: Radius.circular(13),
            ),
            child: InkWell(
              onTap: onTap,
              child: CachedNetworkImage(
                imageUrl:
                  image,
                  width: 180.w,
                  height: 180.h,
                  fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 15),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 160.w,
                  child: Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 12.w,
                      height: 12.h,
                      decoration: BoxDecoration(
                        color: getStatusColor(status),
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "${status} - ${species}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.h),
                DetailText(location: location, seen: seen),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
