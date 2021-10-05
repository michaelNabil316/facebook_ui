import 'package:facebookui/Data/const_data.dart/chats_data.dart';
import 'package:flutter/material.dart';
import 'widgets/birthdayCart.dart';
import 'widgets/buildChatItem.dart';
import 'widgets/sponserdCard.dart';

class RightSection extends StatelessWidget {
  const RightSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myMedia = MediaQuery.of(context).size;
    return Expanded(
      child: ListView(
        children: [
          birthdayCart(),
          sponserdedWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 10),
              Text(
                'Contacts',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(child: SizedBox(width: 10)),
              Icon(Icons.video_call),
              SizedBox(width: 3),
              Icon(Icons.search),
              SizedBox(width: 3),
              Icon(Icons.more_horiz_rounded),
              SizedBox(width: 3),
            ],
          ),
          SizedBox(height: 8),
          Container(
            height: myMedia.height * 0.37,
            child: ListView.separated(
                itemBuilder: (context, index) => buildChatItem(chats[index]),
                separatorBuilder: (context, index) => SizedBox(
                      height: 5,
                    ),
                itemCount: chats.length),
          )
        ],
      ),
    );
  }
}
