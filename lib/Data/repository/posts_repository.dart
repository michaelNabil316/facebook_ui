import 'package:facebookui/Data/const_data.dart/post_data.dart';
import 'package:facebookui/Data/models/postmodel.dart';

class PostsRepository {
  //charactersWebServices

  Future<List<PostModel>> getAllPostsRep() async {
    await Future.delayed(const Duration(seconds: 4));
    //posts is a const data
    return posts;
  }
}
