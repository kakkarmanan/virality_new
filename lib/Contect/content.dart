import 'package:flutter/material.dart';
import 'package:virality_new/utilities/header.dart';

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: Container(
          child: Text('content'),
        ),
      ),
    );
    ;
  }
}
