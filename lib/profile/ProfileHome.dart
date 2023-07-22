import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:virality_new/profile/portfolio/PortfolioPage.dart';

class ProfileHome extends StatefulWidget {
  const ProfileHome({Key? key}) : super(key: key);

  @override
  _ProfileHomeState createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(300, 60)),
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
              child: const Text('Portfolio'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PortfolioPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
