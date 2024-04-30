import 'package:flutter/material.dart';

class SavingDetailsCard extends StatelessWidget {
  const SavingDetailsCard({
    super.key,
    required this.bottomLeftWidget,
    required this.topRightWidget,
    this.onClick
  });

  final Widget bottomLeftWidget;
  final Widget topRightWidget;
  final Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.all(16.0),
        height: 160,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Stack(
          children: [
            ElevatedButton.icon(
              onPressed: onClick,
              icon: Icon(Icons.add),
              label: Text("Quick save"),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 4
                  ),
                  backgroundColor: Colors.yellow.shade800,
                  foregroundColor: Colors.black,
                disabledBackgroundColor: Colors.yellow.shade700,
                disabledForegroundColor: Colors.black
              ),
            ),


            Positioned(
              top: 0,
              right: 0,
              child: topRightWidget
            ),
            Positioned(
                bottom: 0,
                left: 0,
                child: bottomLeftWidget
            )
          ],

        ),
      ),
    );
  }
}