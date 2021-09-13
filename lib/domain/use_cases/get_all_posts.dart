import 'package:architecture_proposal_0/data/models/post.dart';
import 'package:architecture_proposal_0/data/repositories/post_repo_impl.dart';

class GetAllPosts {
  const GetAllPosts(this._repo);
  final PostRepoImpl _repo;

  Future<List<Post>> call() async {
    return await _repo.getAllPosts();
  }
}
