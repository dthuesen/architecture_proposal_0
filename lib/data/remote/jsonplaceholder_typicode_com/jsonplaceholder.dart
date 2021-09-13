import 'package:dio/dio.dart';

final Map<String, String> enpoints = {
  'getPosts': 'https://jsonplaceholder.typicode.com/posts',
  'getSinglePost': 'https://jsonplaceholder.typicode.com/posts/',
  'createPost': 'https://jsonplaceholder.typicode.com/posts',
  'updatePost': 'https://jsonplaceholder.typicode.com/posts/',
  'patchPost': 'https://jsonplaceholder.typicode.com/posts/',
  'deletePost': 'https://jsonplaceholder.typicode.com/posts/'
};

class JsonplaceholderApi {
  late Response<String> response;
  final dio = Dio();

  Future<String> getPosts() async {
    response = await dio.get(enpoints['getPosts']!);
    // print(
    //     "In data/remote/jsonplaceholder - response: ${response.data.toString()}");
    return response.data.toString();
  }
}
