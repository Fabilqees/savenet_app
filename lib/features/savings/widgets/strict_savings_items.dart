import 'package:flutter/material.dart';

class StrictSavingsItems extends StatelessWidget {
  const StrictSavingsItems({
    super.key,
    required this.textOnButton,
    required this.title,
    required this.subtitle,
    required this.color,

  });
  final String textOnButton;
  final String title;
  final String subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 130,
      decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text(textOnButton),
                style: ElevatedButton.styleFrom(
                  backgroundColor: color,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 1.5)
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 24,
                    color: color
                ),
              ),

              Text(
                subtitle,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
