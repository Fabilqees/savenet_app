import 'package:flutter/material.dart';
import 'package:savenet_app/features/home/widget/my_todo_item.dart';

import 'hide_todo_sheet.dart';

class MyTodoSection extends StatelessWidget {
  const MyTodoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Header Row Start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  "My Todo",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38
                ),
              ),
              TextButton
                  (onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        showDragHandle: true,
                        builder: (context) {
                          return HideTodoSheet();
                    }
                    );
              },
                  child: Row(
                    children: [
                      Text(
                          "Hide",
                        style: TextStyle(color: Colors.red.shade700),
                      ),
                      Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Colors.red.shade700,
                      )
                    ],
                  )
,              )
            ],
          ),
          //List View Start
          SizedBox(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MyTodoItem(
                  title: "Add Debit Card",
                  progress: 0.3,
                  onPressed: () {},
                ),
                MyTodoItem(
                  title: "Enable Autosave",
                  progress: 0.9,
                    onPressed: () {}
                ),
                MyTodoItem(
                  title: "Enable FaceID /Fingerprint",
                  progress: 0,
                    onPressed: () {}
                ),
                MyTodoItem(
                    title: "Add a Picture",
                    progress: 0.1,
                    onPressed: () {},
                ),
                MyTodoItem(
                  title: "Add your BVN",
                  progress: 0.2,
                  onPressed: () {},
                ),
                MyTodoItem(
                  title: "Verify your Identity",
                  progress: 0.8,
                  onPressed: () {},
                ),
                MyTodoItem(
                  title: "Add your Address",
                  progress: 0.9,
                  onPressed: () {},
                )
              ],

            ),
          )
        ],
      ),
    );
  }
}



