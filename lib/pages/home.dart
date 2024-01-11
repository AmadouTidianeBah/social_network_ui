import 'package:flutter/material.dart';
import 'package:social_network_ui/component/add_story_item.dart';
import 'package:social_network_ui/component/status_item.dart';
import 'package:social_network_ui/component/story_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green.shade50,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Fottin",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 4
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Badge(
                label: Text("3"),
                child: Icon(Icons.message_outlined),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Badge(
                label: Text("3"),
                child: Icon(Icons.notifications_outlined),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_box_outlined)
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.movie_creation_outlined),
          onPressed: () {},
          shape: CircleBorder(),
          backgroundColor: Colors.grey.shade300,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: const BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.grey,
          height: 60,
          notchMargin: 8,
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home_outlined, size: 28,),
                Icon(Icons.search, size: 28,),
                Icon(Icons.shopping_bag_outlined, size: 28,),
                Icon(Icons.person_outline_rounded, size: 28,)
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  AddStoryItem(),
                  StoryItem(),
                  StoryItem(),
                  StoryItem(),
                  StoryItem(),
                  StoryItem(),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  StatusItem(),
                  const Divider(height: 16, color: Colors.grey,),
                  StatusItem(),
                  const Divider(height: 16, color: Colors.grey,),
                  StatusItem(),
                  const Divider(height: 16, color: Colors.grey,),
                  StatusItem(),
                  const Divider(height: 16, color: Colors.grey,),
                  StatusItem(),
                  const Divider(height: 16, color: Colors.grey,),
                  StatusItem(),
                  const Divider(height: 16, color: Colors.grey,),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
