import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Badge(
            alignment: Alignment.topRight,
            backgroundColor: Colors.blue.shade300,
            textColor: Colors.black,
            offset: Offset(0, 2),
            label: Text("2"),
            child: CircleAvatar(
              backgroundImage: AssetImage("asset/images/pain.jpg"),
              radius: 32,
            ),
          ),
          const SizedBox(height: 8,),
          Text(
              "Pain"
          )
        ],
      ),
    );
  }
}
