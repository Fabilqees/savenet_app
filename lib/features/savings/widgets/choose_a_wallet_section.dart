import 'package:flutter/material.dart';

class ChooseAWalletSection extends StatelessWidget {
  const ChooseAWalletSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
              "Choose a wallet to Top Up",
            style: TextStyle(
              color: Colors.grey
            ),
          ),
          Wrap(
            children: [
              WalletItem(title: "PiggyBank", balance: "NGN 2000",),
              WalletItem(title: "PiggyFlex", balance: "NGN 1500",)

            ],
          ),
        ],
      ),
    );
  }
}

class WalletItem extends StatelessWidget {
  const WalletItem({
    super.key,
    required this.title,
    required this.balance,
  });

  final String title;
  final String balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 130,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
              balance,
               style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}