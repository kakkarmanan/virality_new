import 'package:flutter/material.dart';
import 'package:virality_new/utilities/header.dart';

class chat_home extends StatefulWidget {
  const chat_home({super.key});

  @override
  State<chat_home> createState() => _chat_homeState();
}

class _chat_homeState extends State<chat_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: ListView(
            children: [
              ListTile(
                  leading: CircleAvatar(
                    child: Image.asset('assets/img/virality_logo.png'),
                  ),
                  title: Text('User')),
              Divider(),
              ListTile(
                  leading: CircleAvatar(
                    child: Image.asset('assets/img/virality_logo.png'),
                  ),
                  title: Text('User')),
            ],
          ),
        ));
  }
}
