import 'package:flutter/material.dart';
import 'package:savenet_app/features/home/widget/savings_details_card.dart';

import '../../invest/widgets/invest_details_card.dart';

class UserBalanceDetails extends StatefulWidget {
  const UserBalanceDetails({
    super.key,
  });

  @override
  State<UserBalanceDetails> createState() => _UserBalanceDetailsState();
}

class _UserBalanceDetailsState extends State<UserBalanceDetails> with SingleTickerProviderStateMixin{
 late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: PageView(
              onPageChanged: (index){
                setState(() {
                  tabController.index = index;
                });
              },
              children:[
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: SavingDetailsCard(
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: InvestDetailsCard(),
                )
              ]
          ),
        ),
        TabPageSelector(
          controller: tabController,
          selectedColor: Colors.blue,
          color: Colors.white,
        )
      ],
    );
  }
}
