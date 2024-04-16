

import 'package:flutter/material.dart';
import 'package:savenet_app/features/home/widget/vetted_opportunities_item.dart';

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
                VOItem(
                  image: ("assets/images/invest_img.png"),
                  title: "CORPERATE DEBT",
                  subtitle: "10%. returns in 9 months",
                ),
                VOItem(
                  image: ("assets/images/invest_img2.png"),
                  title: "CORPERATE DEBT",
                  subtitle: "5.9%. returns in 6 months",
                ),
                VOItem(
                  image: ("assets/images/invest_img3.png"),
                  title: "CORPERATE DEBT",
                  subtitle: "10.4%. returns in 10 months",
                ),
                VOItem(
                  image: ("assets/images/invest_img4.png"),
                  title: "CORPERATE DEBT",
                  subtitle: "3.7%. returns in 3 months",
                ),
                VOItem(
                  image: ("assets/images/invest_img5.png"),
                  title: "CORPERATE DEBT",
                  subtitle: "11%. returns in 9 months",
                ),
                VOItem(
                  image: ("assets/images/invest_img6.png"),
                  title: "CORPERATE DEBT",
                  subtitle: "6.7%. returns in 6 months",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

