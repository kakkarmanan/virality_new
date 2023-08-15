import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:virality_new/activityFeed/ActivityFeedPage.dart';
import 'package:virality_new/searchPage/SearchPage.dart';
import 'package:virality_new/profile/ProfileHome.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState(email: '');
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final String email;
  _HomePageState({required this.email});
  @override
  void initState() {
    super.initState();
  }

  final PageController _pageController = PageController();
  int pageIndex = 0;
  void onPageChange(int pageIndex) {
    print(_pageController);
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) async {
    print(pageIndex);
    await _pageController.animateToPage(
      pageIndex,
      duration: const Duration(milliseconds: 650),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: 0,
            height: 60.0,
            items: const <Widget>[
              Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                Icons.search_sharp,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                Icons.add_circle_outline_rounded,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                Icons.movie_filter_outlined,
                size: 30,
                color: Colors.white,
              ),
              Icon(
                Icons.account_circle_outlined,
                size: 30,
                color: Colors.white,
              ),
            ],
            color: Colors.black,
            buttonBackgroundColor: Colors.black,
            backgroundColor: const Color(0xffd5e4e1),
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 600),
            onTap: onTap,
            letIndexChange: (index) => true,
          ),
          body: Stack(
            children: [
              PageView(
                controller: _pageController,
                onPageChanged: onPageChange,
                physics: const NeverScrollableScrollPhysics(),
                dragStartBehavior: DragStartBehavior.start,
                children: const [
                  ActivityFeedPage(),
                  SearchPage(),
                  SearchPage(),
                  SearchPage(),
                  ProfileHome(),
                ],
              ),
              // Positioned(
              //     //left: 100.0,
              //     right: 50.0,
              //     bottom: 50.0,
              //     child: FloatingActionButton(
              //         onPressed: () => {
              //               Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) => Chatbot()))
              //             }))
            ],
          )),
    );
  }
}
