import 'package:facebookui/Data/const_data.dart/left_section_data.dart';
import 'package:flutter/material.dart';
import 'widgets/group_list_tile.dart';
import 'widgets/list_tile.dart';

class LeftSection extends StatelessWidget {
  const LeftSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          LeftListTile(model: leftsDataList[0]),
          GroupListTile(
              icon: Icons.people,
              iconColor: Colors.blue[300],
              text: 'Friends',
              backGroundcolor: Colors.transparent),
          GroupListTile(
              icon: Icons.add_business_outlined,
              iconColor: Colors.blue[300],
              text: 'Marketplace',
              backGroundcolor: Colors.transparent),
          GroupListTile(
              icon: Icons.groups,
              iconColor: Colors.white,
              text: 'Groups',
              backGroundcolor: Colors.blue[300]),
          GroupListTile(
              icon: Icons.tv_rounded,
              iconColor: Colors.blue[300],
              text: 'Watch',
              backGroundcolor: Colors.transparent),
          GroupListTile(
              icon: Icons.watch_later_outlined,
              iconColor: Colors.blue[300],
              text: 'Memories',
              backGroundcolor: Colors.transparent),
          GroupListTile(
              icon: Icons.arrow_drop_down_circle_sharp,
              iconColor: Colors.grey,
              text: 'See more',
              backGroundcolor: Colors.transparent),
          SizedBox(height: 5),
          Container(
            height: 1,
            color: Colors.grey[300],
            width: double.infinity,
          ),
          SizedBox(
            height: 10,
          ),
          LeftListTile(model: leftsDataList[6]),
          LeftListTile(model: leftsDataList[7]),
          LeftListTile(model: leftsDataList[8]),
          LeftListTile(model: leftsDataList[9]),
          LeftListTile(model: leftsDataList[10]),
          GroupListTile(
              icon: Icons.arrow_drop_down_circle_sharp,
              iconColor: Colors.grey,
              text: 'See more',
              backGroundcolor: Colors.transparent),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'CopyRight @facebook 2021',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
