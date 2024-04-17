import 'package:flutter/material.dart';

class AccountToggles extends StatelessWidget {
  const AccountToggles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Text(
              "Enable finger print/face ID",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            trailing: Switch(
              value: true,
              onChanged: (value){},
              activeColor: Colors.green.shade300,
            ),
          ),
          ListTile(
            title: Text(
              "Show dashboard account balances",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            trailing: Switch(
              value: true,
              onChanged: (value){},
              activeColor: Colors.green.shade300,
            ),
          ),
          ListTile(
            title: Text(
              "Interest enabled on savings",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            trailing: Switch(
              value: true,
              onChanged: (value){},
              activeColor: Colors.green.shade300,
            ),
          ),
        ],
      ),
    );
  }
}
