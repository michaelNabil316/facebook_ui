import 'package:facebookui/Data/const_data.dart/story_data.dart';
import 'package:flutter/material.dart';
import 'build_story.dart';

class Stories extends StatelessWidget {
  const Stories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(bottom: 10),
      child: ListView.builder(
        itemBuilder: (context, index) => buildStory(stories[index]),
        itemCount: stories.length,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
