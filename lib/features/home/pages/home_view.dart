
import 'package:flutter/material.dart';
import 'package:savenet_app/features/home/widget/my_todo_section.dart';
import 'package:savenet_app/features/home/widget/top_savings_section.dart';
import 'package:savenet_app/features/home/widget/vetted_oportunities_section.dart';

import '../widget/savings_details_card.dart';
import '../widget/suggestions_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Bilqees",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Do more with your finances",
              style: TextStyle(
                fontSize: 12.0,
              ),

            )
          ],
        ),
        actions: [
          IconButton(
            color: Colors.blue,
            onPressed: () {},
            icon:  Icon(Icons.account_circle,
              size: 40,
            ),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SavingDetailsCard(
            bottomLeftWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "My Savings",
                     style: TextStyle(
                       color: Colors.grey.shade200
                     ),
                ),
                Text(
                  "****",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                  ),
                )
              ],
            ),
            topRightWidget: ElevatedButton(
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
          MyTodoSection(),
          TopSavingsSection(),
          SuggestionsSection(),
          VettedOpportunitesSection()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        shape: CircleBorder(),
        onPressed: (){
          print("FAB CLICKED");
        },
      ) ,
    );
  }
}






