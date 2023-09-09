import 'package:flutter/material.dart';
import 'package:virality_new/utilities/header.dart';

class challenges extends StatefulWidget {
  const challenges({super.key});

  @override
  State<challenges> createState() => _challengesState();
}

class _challengesState extends State<challenges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: Container(
          child: Text('Challenges page'),
        ),
      ),
    );
    ;
  }
}
