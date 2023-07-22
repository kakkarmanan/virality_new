import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virality_new/utilities/StoryCircle.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:virality_new/activityFeed/widgets/post.dart';

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
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150.0),
          child: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 150.0,
            flexibleSpace: ListView(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Virality',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                  textAlign: TextAlign.center,
                ),
                Container(
                    color: Colors.white,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                            child: CarouselSlider(
                              options: CarouselOptions(
                                padEnds: false,
                                height: 100,
                                viewportFraction: 0.2,
                                enableInfiniteScroll: false,
                                animateToClosest: false,
                              ),
                              items: [1, 2, 3, 4, 5, 6, 7, 8, 9].map((i) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return const StoryCircle();
                                  },
                                );
                              }).toList(),
                            ),
                          ),
                          const Divider(
                            height: 20.0,
                            thickness: 2,
                            indent: 0.0,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ))
              ],
            ),
          )),
      body: ListView(
        children: const [
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
