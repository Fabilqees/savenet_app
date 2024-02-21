import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:savenet_app/account_view.dart';
import 'package:savenet_app/home_view.dart';
import 'package:savenet_app/invest_view.dart';
import 'package:savenet_app/savings_view.dart';

class HomePage  extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listOfPages = [
    HomeView(),
    SavingsView(),
    InvestView(),
    AccountView()
  ];

  var selectedIndex = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Savenet App"),
      ),
      body: listOfPages[selectedIndex],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print("FAB CLICKED");
        },
      ) ,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.savings),
          label: "Savings",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.rocket_launch),
          label: "Navigation"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),
                label: "Account" ),
        ],
      ),
    );
  }
}

