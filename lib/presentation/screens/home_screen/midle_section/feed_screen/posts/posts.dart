import 'package:flutter/material.dart';
import 'post_item.dart';

class Posts extends StatelessWidget {
  final allPosts;
  const Posts({Key key, this.allPosts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return buildPostItem(context, allPosts[index]);
        },
        separatorBuilder: (context, index) => SizedBox(
              height: 5,
            ),
        itemCount: allPosts.length);
  }
}
