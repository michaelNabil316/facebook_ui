import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Loading extends StatelessWidget {
  const Loading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Shimmer.fromColors(
        baseColor: Colors.white,
        highlightColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundColor: Colors.grey, radius: 20),
                Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 8,
                    width: 100,
                    color: Colors.grey),
              ],
            ),
            Container(
                margin: EdgeInsets.all(10),
                width: 300,
                height: 12,
                color: Colors.grey),
            Container(
                margin: EdgeInsets.only(left: 10),
                height: 12,
                width: 300,
                color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
