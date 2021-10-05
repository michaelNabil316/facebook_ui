import 'package:flutter/material.dart';

class LeftListTile extends StatelessWidget {
  final model;
  const LeftListTile({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 15,
        backgroundImage: NetworkImage(
          model.image,
        ),
      ),
      title: Text(
        model.text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.start,
      ),
    );
  }
}
