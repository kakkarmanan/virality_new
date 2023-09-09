import 'package:flutter/material.dart';
import 'package:virality_new/utilities/header.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: Container(
          child: Text('Search page'),
        ),
      ),
    );
  }
}
