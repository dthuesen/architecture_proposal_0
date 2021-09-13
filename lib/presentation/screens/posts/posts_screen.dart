import 'package:architecture_proposal_0/data/models/post.dart';
import 'package:architecture_proposal_0/presentation/providers/posts_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostsScreen extends ConsumerWidget {
  const PostsScreen({Key? key}) : super(key: key);

  static final Widget title = Text('Posts List');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(postsProvider);
    return Center(
      child: Container(
        child: Column(
          children: [
            Text(
                'This is the resulting list of fetchig data from jsonplaceholder.typicode.com.'),
            Divider(),
            posts.map(
              data: (data) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: data.value.length,
                    itemBuilder: (BuildContext context, index) {
                      final Post post = data.value[index];
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text('Title: ${post.title}'),
                        subtitle: Text('Body: ${post.body}'),
                      );
                    },
                  ),
                );
              },
              loading: (_) => const CircularProgressIndicator(),
              error: (error) => Text("An error occured: $error"),
            ),
          ],
        ),
      ),
    );
  }
}
