import 'package:facebookui/Data/models/storymodel.dart';
import 'package:flutter/material.dart';

Widget buildStory(StoryModel model) => Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
        width: 100,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              height: 200,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(model.image),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                model.text,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
                textAlign: TextAlign.start,
              ),
            )
          ],
        ),
      ),
    );
