

import 'package:flutter/material.dart';
import 'package:savenet_app/features/savings/widgets/strict_savings_items.dart';

class StrictSavingsSection extends StatelessWidget {
  const StrictSavingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "Strict Savings",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38
            ),
          ),
          SizedBox(
            height: 350,
            child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: [
                  StrictSavingsItems(
                    textOnButton: "SETUP",
                    title: "PiggyBank",
                    subtitle: "Automatic daily, weekly and monthly",
                    color: Colors.blue.shade300,
                  ),
                  StrictSavingsItems(
                    textOnButton: "LOCK MONEY",
                    title: "SafeLock",
                    subtitle: "Lock funds to avoid temptations",
                    color: Colors.blue.shade200,
                  ),
                  StrictSavingsItems(
                    textOnButton: "NEW GOAL",
                    title: "TargetSavings",
                    subtitle: "Smash your saving goals faster",
                    color: Colors.green.shade600,
                  ),
                  StrictSavingsItems(
                    textOnButton: "ADD MONEY",
                    title: "HouseMoney",
                    subtitle: "Save for your housing",
                    color: Colors.orange.shade400,
                  ),

                ],
            ),
          )
        ],
      ),
    );
  }
}

