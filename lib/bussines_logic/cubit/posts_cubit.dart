import 'package:bloc/bloc.dart';
import 'package:facebookui/Data/models/postmodel.dart';
import 'package:facebookui/Data/repository/posts_repository.dart';
import 'package:meta/meta.dart';
part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  final PostsRepository postsRepository;
  List<PostModel> allposts = [];

  PostsCubit(this.postsRepository) : super(PostsInitial());

  void getAllPosts() {
    emit(PostsLoading());
    postsRepository.getAllPostsRep().then((value) {
      this.allposts = value;
      emit(PostsLoaded(allposts));
    });
  }
}
