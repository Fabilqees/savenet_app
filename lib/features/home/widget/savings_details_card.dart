import 'package:flutter/material.dart';

class SavingDetailsCard extends StatelessWidget {
  const SavingDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 160,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Stack(
        children: [
          ElevatedButton.icon(
            onPressed:  (){},
            icon: Icon(Icons.add),
            label: Text("Quick save"),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 4
                ),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white
            ),
          ),


          Positioned(
            top: 0,
            right: 0,
            child: ElevatedButton(
              onPressed:  (){},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("View Savings"),
                  Icon(Icons.arrow_forward)
                ],
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 4
                  )
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("My Savings"),
                  Text(
                    "****",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  )
                ],
              )
          )
        ],

      ),
    );
  }
}