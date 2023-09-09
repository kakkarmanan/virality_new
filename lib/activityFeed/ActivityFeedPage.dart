import 'package:flutter/material.dart';
import 'package:virality_new/utilities/header.dart';
import 'package:virality_new/activityFeed/widgets/post.dart';
import 'package:virality_new/activityFeed/widgets/stories.dart';

class ActivityFeedPage extends StatefulWidget {
  const ActivityFeedPage({Key? key}) : super(key: key);

  @override
  _ActivityFeedPageState createState() => _ActivityFeedPageState();
}

class _ActivityFeedPageState extends State<ActivityFeedPage> {
  // List<Widget> feed = [ActivityFeedItem(username: "ehllo")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        children: const [
          Stories(),
          Post(
            username: "abc",
          ),
          Post(
            username: "XYZ",
          )
        ],
      ),
    );
  }
}
