import 'package:flutter/material.dart';

class AddStoryItem extends StatelessWidget {
  const AddStoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("asset/images/pain.jpg"),
                radius: 32,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.shade300
                ),
                child: Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
                  size: 20,
                ),
              )
            ],
          ),
          const SizedBox(height: 8,),
          Text(
              "Add Story"
          )
        ],
      ),
    );
  }
}
