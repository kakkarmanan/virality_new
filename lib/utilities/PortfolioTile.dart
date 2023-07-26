import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PortfolioTile extends StatefulWidget {
  const PortfolioTile({Key? key}) : super(key: key);

  @override
  _PortfolioTileState createState() => _PortfolioTileState();
}

class _PortfolioTileState extends State<PortfolioTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0.0, 10, 0.0, 10),
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
      width: 350,
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.outer,
            blurRadius: 5,
            offset: Offset(0.0, 0.75),
          )
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("assets/img/facebook-logo.png"),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "@virality",
            style: TextStyle(
              inherit: false,
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            width: 80,
          ),
          Text(
            "\u{20B9} 502",
            textAlign: TextAlign.end,
            style: TextStyle(
              inherit: false,
              color: Colors.tealAccent,
              fontSize: 15,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }
}
