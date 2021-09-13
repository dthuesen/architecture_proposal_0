import 'dart:convert';

import 'package:architecture_proposal_0/data/models/post.dart';
import 'package:architecture_proposal_0/data/remote/jsonplaceholder_typicode_com/jsonplaceholder.dart';
import 'package:architecture_proposal_0/domain/repositories/post_repo_abstract.dart';

class PostRepoImpl extends PostRepo {
  final JsonplaceholderApi postApi;

  PostRepoImpl(this.postApi);

  @override
  Future<List<Post>> getAllPosts() async {
    final String allUsersEntity = await postApi.getPosts();
    final List<dynamic> parsedList = json.decode(allUsersEntity);
    final List<Post> allUsersFetched =
        List<Post>.from(parsedList.map((item) => Post.fromJson(item)));

    return allUsersFetched;
  }
}
