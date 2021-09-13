import 'package:architecture_proposal_0/data/models/post.dart';
import 'package:architecture_proposal_0/data/remote/jsonplaceholder_typicode_com/jsonplaceholder.dart';
import 'package:architecture_proposal_0/data/repositories/post_repo_impl.dart';
import 'package:architecture_proposal_0/domain/use_cases/get_all_posts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class _Posts {
  GetAllPosts _getAllPosts = GetAllPosts(PostRepoImpl(JsonplaceholderApi()));

  Future getAllPosts() async {
    Future<List<Post>> _response = _getAllPosts.call();
    print("In PostProvider StateNotifier - getAllPosts response: $_response");
    return _response;
  }
}

final futureClass = Provider((ref) => _Posts());

final postsProvider = FutureProvider<List<Post>>((ref) async {
  final client = ref.watch(futureClass);
  return client._getAllPosts();
});
