import 'package:flutter/material.dart';

class HideTodoSheet extends StatelessWidget {
  const HideTodoSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("HELLO"),
          Image.asset("assets/images/piggyvest.png",
            height: 80,
            width: 80,
          ),
          Text("Hide TO-DO List"),
        SizedBox(height: 24,),
        Text("Temporarily hide all to-do list till tomorrow"),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Divider(),
        ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Remind me Later"),
                       content: Text("Are you sure you want to hide your to do list till tomorrow"),
                       actions: [
                         ElevatedButton(
                             onPressed: () {
                               Navigator.pop(context);

                             },
                             child: Text("Yes remove it")
                         ),
                         ElevatedButton(
                             onPressed: () {
                               Navigator.pop(context);

                             },
                             child: Text("Close")
                         )
                       ], 
                      );
                    }
                );
              },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              side: BorderSide(
                color: Colors.red.shade700,
                width: 2,
              ),
            ),
              child: Text(
                  "Hide todo List",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                ),
              ),

          )

        ],
      ),
    );
  }
}