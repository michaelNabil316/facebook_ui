import 'package:facebookui/Data/const_data.dart/rooms_data.dart';
import 'package:flutter/material.dart';
import 'build_room.dart';

class CreatRoom extends StatelessWidget {
  const CreatRoom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 5,
        ),
        itemBuilder: (context, index) => buildRoom(rooms[index]),
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: rooms.length,
      ),
    );
  }
}
