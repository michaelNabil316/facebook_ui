import 'package:facebookui/Data/models/roommodel.dart';
import 'package:flutter/material.dart';

Widget buildRoom(RoomModel model) => CircleAvatar(
      backgroundImage: NetworkImage(model.image),
      radius: 17,
    );
