import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virality_new/activityFeed/chat.dart';
import 'package:virality_new/challenges/challenges.dart';

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_stars;

  return AppBar(
    backgroundColor: Colors.white,
    title: const Text(
      "Virality",
      style: TextStyle(color: Colors.black),
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.insert_chart_outlined_outlined),
        onPressed: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const challenges()))
        },
        color: Colors.black,
      ),
      IconButton(
        icon: Icon(Icons.send),
        onPressed: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const chat_home()))
        },
        color: Colors.black,
      ),
    ],
  );
}
