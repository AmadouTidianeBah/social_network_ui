import 'package:flutter/material.dart';
import 'package:social_network_ui/component/status_item_button.dart';

class StatusItem extends StatelessWidget {
  const StatusItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("asset/images/pain.jpg",),
                    radius: 32,
                  ),
                  const SizedBox(width: 12,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Williamson",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "3 Minutes Ago",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_vert_outlined)
            ],
          ),
          const SizedBox(height: 16,),
          Text(
            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe distinctio esse excepturi a, nulla explicabo dolores maiores laboriosam quibusdam maxime fugiat ab perspiciatis repellendus, tempora facilis aut omnis commodi in?",
            style: TextStyle(
              fontSize: 16
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
          const SizedBox(height: 20,),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset("asset/images/pain.jpg")
          ),
          const SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 16,
                  ),
                  const SizedBox(width: 8,),
                  Text(
                    "2.8k",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                    ),
                  )
                ],
              ),
              Text(
                "948 Comment",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey
                ),
              )
            ],
          ),
          const SizedBox(height: 16,),
          Row(
            children: [
              Expanded(
                child: StatusItemButton(
                  title: "Like",
                  icon: Icons.favorite_outline,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Expanded(
                  child: StatusItemButton(
                    title: "Comment",
                    icon: Icons.message_outlined,
                  ),
                ),
              ),
              Expanded(
                child: StatusItemButton(
                  title: "Share",
                  icon: Icons.share_outlined,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
