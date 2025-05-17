import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import 'detail_text.dart';

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
              child: Image.network(
                image,
                width: 180,
                height: 180,
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
                  width: 180,
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
                      width: 12,
                      height: 12,
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
                SizedBox(height: 7),
                DetailText(location: location, seen: seen),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
