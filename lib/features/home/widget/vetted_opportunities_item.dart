import 'package:flutter/material.dart';

class VOItem extends StatelessWidget {
  const VOItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle
  });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: 152,
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),
          ),
          Text(
              subtitle
          )
        ],
      ),
    );
  }
}
