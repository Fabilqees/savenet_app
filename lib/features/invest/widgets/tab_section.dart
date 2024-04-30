import 'package:flutter/material.dart';

class TabSection extends StatelessWidget {
  const TabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
                tabs: [
                  Tab(
                  text: "Active",
                ),
                  Tab(
                    text: "Matured",
                  ),
             ]
            ),
            SizedBox(
              height: 200,
              child: TabBarView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                      ),
                      child: Text("ACTIVE INVESTMENT"),
                    ),
                    Container(
                      child: Text("MATURED INVESTMENTS"),
                    ),
                  ]
              ),
            )
          ],
        )
    );
  }
}
