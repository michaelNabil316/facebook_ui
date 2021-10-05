import 'package:facebookui/Data/models/chatmodel.dart';
import 'package:flutter/material.dart';

Widget buildChatItem(ChatModel model) => Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: CircleAvatar(
            backgroundImage: NetworkImage(model.image),
          ),
        ),
        Expanded(
            flex: 2,
            child: Text(
              model.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ))
      ],
    );
