

import 'package:flutter/material.dart';

class VettedOpportunitesSection extends StatelessWidget {
  const VettedOpportunitesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  "vetted oppourtunities",
                   style: TextStyle(
                   fontSize: 16,
                   color: Colors.black38
                ),
              ),
              TextButton(onPressed: () {},
                  child: Row(
                    children: [
                      Text("Find More"),
                      Icon(Icons.arrow_forward_ios, size:18)
                    ],
                  )
              )
            ],
          ),
          SizedBox(
            height: 210,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                VOItem(),
                VOItem(),
                VOItem(),
                VOItem(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class VOItem extends StatelessWidget {
  const VOItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Image.asset(
             "assets/images/invest_img.png",
           width: 152,
         ),
         Text(
             "Corperate debt",
           style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 18
           ),
         ),
         Text("10% returns in 9 months")
       ],
      ),
    );
  }
}
