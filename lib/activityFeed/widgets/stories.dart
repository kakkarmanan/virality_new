import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:virality_new/utilities/StoryCircle.dart';

class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        // height: 200,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 0.0),
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
        ));
  }
}
