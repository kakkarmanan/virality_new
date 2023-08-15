import 'package:flutter/material.dart';

class TopThreeWidget extends StatefulWidget {
  const TopThreeWidget({super.key});

  @override
  State<TopThreeWidget> createState() => _TopThreeWidgetState();
}

class _TopThreeWidgetState extends State<TopThreeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 250,
      width: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('2'),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.black,
                  // child: Image(
                  //   image: AssetImage('assets/img/virality_logo.png'),
                  // ),
                ),
                Text('@abc'),
                Text('\$23')
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('1'),
                Icon(Icons.star),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.black,
                  // child: Image(
                  //   image: AssetImage('assets/img/virality_logo.png'),
                  // ),
                ),
                Text('@abc'),
                Text('\$23')
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('3'),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.black,
                  // child: Image(
                  //   image: AssetImage('assets/img/virality_logo.png'),
                  // ),
                ),
                Text('@abc'),
                Text('\$23')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class top_three_tile extends StatefulWidget {
  const top_three_tile({super.key});

  @override
  State<top_three_tile> createState() => _top_three_tileState();
}

class _top_three_tileState extends State<top_three_tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomRight,
        child: Column(
          children: [
            Text('3'),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.black,
              // child: Image(
              //   image: AssetImage('assets/img/virality_logo.png'),
              // ),
            ),
            Text('@abc'),
            Text('\$23')
          ],
        ));
  }
}
