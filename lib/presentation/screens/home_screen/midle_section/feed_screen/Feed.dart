import 'package:facebookui/Data/models/postmodel.dart';
import 'package:facebookui/bussines_logic/cubit/posts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_diver.dart';
import 'live_video_photo_section/live_video_cart.dart';
import 'loading_shimmer.dart';
import 'posts/posts.dart';
import 'rooms/rooms.dart';
import 'stories/stories.dart';
import 'whats_on_your_mind.dart';

class Feed extends StatefulWidget {
  const Feed({Key key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  List<PostModel> allposts = [];
  @override
  void initState() {
    super.initState();
    //BlocProvider.of<PostsCubit>(context).getAllPosts();
    (context).read<PostsCubit>().getAllPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Align(
        alignment: AlignmentDirectional.topStart,
        child: SingleChildScrollView(
          child: Align(
            alignment: AlignmentDirectional.topStart,
            child: Column(
              children: [
                Stories(), //stories widget
                Card(
                  child: Column(
                    children: [
                      WhatsOnYourMind(), //img,textfield of create post
                      CustomDivider(),
                      LiveSection(), //live, video and photos section
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
                //create room and rooms
                Rooms(),
                //all posts
                BlocBuilder<PostsCubit, PostsState>(
                  builder: (context, state) {
                    if (state is PostsLoading) {
                      return Loading();
                    } else if (state is PostsLoaded) {
                      allposts = (state).postsList;
                      return Posts(allPosts: allposts);
                    } else {
                      return Loading();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
