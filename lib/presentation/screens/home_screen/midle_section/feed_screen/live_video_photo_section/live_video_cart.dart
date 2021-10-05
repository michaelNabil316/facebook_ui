import 'package:flutter/material.dart';
import 'live_divier.dart';
import 'live_elements.dart';

class LiveSection extends StatelessWidget {
  const LiveSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LiveElement(
          icon: Icons.live_tv_sharp,
          icColor: Colors.red,
          elementName: 'Live',
        ),
        LiveDivier(),
        LiveElement(
          icon: Icons.photo,
          icColor: Colors.green,
          elementName: 'Photo',
        ),
        LiveDivier(),
        LiveElement(
          icon: Icons.video_call_rounded,
          icColor: Colors.purple,
          elementName: 'Video',
        ),
      ],
    );
  }
}
