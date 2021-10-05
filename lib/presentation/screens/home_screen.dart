import 'package:facebookui/Data/repository/posts_repository.dart';
import 'package:facebookui/bussines_logic/cubit/posts_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './home_screen/navBar.dart/nav_bar.dart';
import 'package:flutter/material.dart';
import './home_screen/left_section/left_section.dart';
import 'home_screen/midle_section/feed_screen/Feed.dart';
import 'home_screen/right_section/right_section.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _FacebookWebState();
}

class _FacebookWebState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: BlocProvider(
        create: (context) => PostsCubit(PostsRepository()),
        child: SafeArea(
          child: Column(
            children: [
              //navbar
              NavBar(),
              //facebook body
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        //Left section
                        if (constraints.maxWidth.toInt() >= 500) LeftSection(),
                        //middle section
                        Feed(),
                        //right section
                        if (constraints.maxWidth.toInt() >= 500) RightSection(),
                      ],
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
