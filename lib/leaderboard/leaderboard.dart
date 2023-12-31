import 'package:flutter/material.dart';
import 'package:virality_new/leaderboard/widgets/tile.dart';
import 'package:virality_new/leaderboard/widgets/top_three.dart';

class Leaderboard extends StatefulWidget {
  const Leaderboard({super.key});

  @override
  State<Leaderboard> createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Center(
              child: Text(
                'Leaderboard',
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelColor: Colors.black,
                  dividerColor: Colors.black,
                  tabs: const [
                    Tab(
                      text: 'Today',
                      height: 20.0,
                    ),
                    Tab(
                      text: 'Week',
                    ),
                    Tab(
                      text: 'Month',
                    )
                  ],
                ),
              ),
              const Expanded(
                child:
                    TabBarView(children: [MyTabOne(), MyTabTwo(), MyTabTwo()]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyTabOne extends StatelessWidget {
  const MyTabOne({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller;
    _controller = TextEditingController(text: 'Predefined Text');
    return Expanded(
        child: ListView(children: [
      // Expanded(child: TopThreeWidget()),
      TopThreeWidget(),
      LeaderBoard_tile(),
      LeaderBoard_tile(),
      LeaderBoard_tile()
    ]));
  }
}

class MyTabTwo extends StatelessWidget {
  const MyTabTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "This is Tab One",
      style: TextStyle(fontSize: 20),
    ));
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// const Color avtar_backGround = Color(0xFF2FCB72);
// const Color avtar_backGround1 = Color(0xFF0C3329);
// const Color prof_Card = Color(0xFF196F3D);
// const Color grade1 = Color(0xFF00b09b);
// const Color grade2 = Color(0xFF96c93d);
// const Color cool = Color(0xFF181A2F);
// const clickedColor = Color(0xFF0C3329);
// const unclickedColor = Color(0xFF196F3D);
// Color probtn = Color(0xFF0C3329);
// Color leadbtn = Color(0xFF196F3D);
// Color gold = Color(0xFFD0B13E);
// Color silver = Color(0xFFE7E7E7);
// Color bronze = Color(0xFFA45735);

// //Color list_item = Colors.grey[200];

// class Leaderboard extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _LeaderboardState();
// }

// class _LeaderboardState extends State<Leaderboard> {
//   List<String> names = [
//     "1",
//     "2",
//     "3",
//     "4",
//     "1",
//     "2",
//     "3",
//     "4",
//     "1",
//     "2",
//     "3",
//     "4",
//     "1",
//     "2",
//     "3",
//     "4",
//     "1",
//     "2",
//     "3",
//     "4",
//     "1",
//     "2",
//     "3",
//     "4",
//     "1",
//     "2",
//     "3",
//     "4",
//     "1",
//     "2",
//     "3",
//     "4"
//   ];
//   List<String> litems = [
//     "1",
//     "2",
//     "3",
//     "4",
//     "1",
//     "2",
//     "3",
//     "4",
//     "1",
//     "2",
//     "3",
//     "4",
//     "1",
//     "2",
//     "3",
//     "4",
//     "1",
//     "2",
//     "3",
//     "4",
//     "1",
//     "2",
//     "3",
//     "4",
//     "1",
//     "2",
//     "3",
//     "4",
//     "1",
//     "2",
//     "3",
//     "4"
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         bottomNavigationBar: BottomAppBar(
//           child: Container(
//             color: cool,
//             child: Card(
//               margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
//               elevation: 0,
//               color: Colors.red,
//               child: Container(
//                 padding: EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Text("pos",
//                         style: TextStyle(
//                             color: Colors.black, fontWeight: FontWeight.bold)),
//                     CircleAvatar(
//                       foregroundColor: Colors.green,
//                     ),
//                     Text(
//                       "name",
//                       style: TextStyle(
//                           color: Colors.black, fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       "Score",
//                       style: TextStyle(
//                           color: Colors.black, fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//         body: CustomScrollView(
//           slivers: <Widget>[
//             SliverAppBar(
//               backgroundColor: probtn,
//               pinned: true,
//               snap: false,
//               floating: false,
//               expandedHeight: 200.0,
//               bottom: PreferredSize(
//                 preferredSize: Size.fromHeight(4.0),
//                 child: Container(
//                   color: avtar_backGround1,
//                   height: 50,
//                   child: Container(
//                     child: Row(
//                       children: [
//                         SizedBox(width: 35),
//                         Text("Postion",
//                             style: TextStyle(
//                                 color: Colors.grey[200],
//                                 fontWeight: FontWeight.bold)),
//                         SizedBox(width: 52),
//                         Text(
//                           "Profile",
//                           style: TextStyle(
//                               color: Colors.grey[200],
//                               fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(width: 60),
//                         Text(
//                           "Name",
//                           style: TextStyle(
//                               color: Colors.grey[200],
//                               fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(width: 60),
//                         Text(
//                           "Score",
//                           style: TextStyle(
//                               color: Colors.grey[200],
//                               fontWeight: FontWeight.bold),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               flexibleSpace: FlexibleSpaceBar(
//                 background: Container(
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                           colors: <Color>[leadbtn.withOpacity(0.5), cool])),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 50.0),
//                         child: Text(
//                           "LEADERBOARD",
//                           style: TextStyle(
//                               fontSize: 30,
//                               color: Colors.grey[200],
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Icon(
//                         Icons.emoji_events_rounded,
//                         color: gold,
//                         size: 70,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               elevation: 9.0,
//             ),
//             SliverList(
//                 delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) => buildList(context, index),
//               childCount: litems.length,
//             ))
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildList(BuildContext txt, int index) {
//     int ind = index + 1;
//     final pos = litems[index];
//     final name = names[index];

//     Widget listItem;

//     if (ind == 1) {
//       listItem = Card(
//         margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
//         shadowColor: Colors.grey[200],
//         color: gold,
//         child: Container(
//           padding: EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Text(pos,
//                   style: TextStyle(
//                       color: Colors.black, fontWeight: FontWeight.bold)),
//               CircleAvatar(
//                 foregroundColor: Colors.green,
//               ),
//               Text(
//                 name,
//                 style:
//                     TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 "Score",
//                 style:
//                     TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//               )
//             ],
//           ),
//         ),
//       );
//     } else if (ind == 2) {
//       listItem = Card(
//         margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
//         shadowColor: Colors.grey[200],
//         color: silver,
//         child: Container(
//           padding: EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Text(pos,
//                   style: TextStyle(
//                       color: Colors.black, fontWeight: FontWeight.bold)),
//               CircleAvatar(
//                 foregroundColor: Colors.green,
//               ),
//               Text(
//                 name,
//                 style:
//                     TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 "Score",
//                 style:
//                     TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//               )
//             ],
//           ),
//         ),
//       );
//     } else if (ind == 3) {
//       listItem = Card(
//         shadowColor: Colors.grey[200],
//         margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
//         color: bronze,
//         child: Container(
//           padding: EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Text(pos,
//                   style: TextStyle(
//                       color: Colors.black, fontWeight: FontWeight.bold)),
//               CircleAvatar(
//                 foregroundColor: Colors.green,
//               ),
//               Text(
//                 name,
//                 style:
//                     TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 "Score",
//                 style:
//                     TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//               )
//             ],
//           ),
//         ),
//       );
//     } else {
//       listItem = Card(
//         margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
//         shadowColor: Colors.grey[200],
//         color: Colors.white,
//         child: Container(
//           padding: EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Text(pos,
//                   style: TextStyle(
//                       color: Colors.black, fontWeight: FontWeight.bold)),
//               CircleAvatar(
//                 foregroundColor: Colors.green,
//               ),
//               Text(
//                 name,
//                 style:
//                     TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 "Score",
//                 style:
//                     TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//               )
//             ],
//           ),
//         ),
//       );
//     }

//     return Stack(
//       children: [
//         Container(
//           color: Colors.grey[200],
//           child: listItem,
//         ),
//       ],
//     );
//   }
// }
