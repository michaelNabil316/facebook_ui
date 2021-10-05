import 'package:carousel_slider/carousel_slider.dart';
import 'package:facebookui/Data/models/postmodel.dart';
import 'package:flutter/material.dart';

Widget buildPostItem(context, PostModel model) => Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(model.profileImage),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Text(
                          '${model.time.toString()}h',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.public,
                          size: 14,
                          color: Colors.grey,
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.more_horiz_outlined,
                  size: 20,
                  color: Colors.blueGrey,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            if (model.text != null)
              Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10),
                child: Text(model.text),
              ),
            SizedBox(
              height: 10,
            ),
            if (model.images != null)
              CarouselSlider(
                options: CarouselOptions(
                    height: 200,
                    initialPage: 0,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal),
                items: model.images.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Image(
                        image: NetworkImage(i),
                        fit: BoxFit.fill,
                        width: double.infinity,
                        height: 200,
                      );
                    },
                  );
                }).toList(),
              ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 9,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 12,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    model.like.toString(),
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Spacer(),
                  Text(
                    '${model.comments.toString()} Comments',
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey[300],
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 20,
                        )),
                    Expanded(
                        child: Text(
                      'Like',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ))
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mode_comment_outlined,
                          color: Colors.black,
                          size: 20,
                        )),
                    Expanded(
                        child: Text('Comment',
                            overflow: TextOverflow.ellipsis, maxLines: 1))
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share_outlined,
                          color: Colors.black,
                          size: 20,
                        )),
                    Expanded(
                        child: Text('Share',
                            overflow: TextOverflow.ellipsis, maxLines: 1))
                  ],
                )),
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
