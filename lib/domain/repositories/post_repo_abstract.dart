import 'package:architecture_proposal_0/data/models/post.dart';

abstract class PostRepo {
  Future<List<Post>> getAllPosts();
}
