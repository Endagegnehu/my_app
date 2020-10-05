import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:my_app/app/datamodels/comment.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/app/datamodels/post.dart';
import 'package:my_app/app/datamodels/user.dart';

@lazySingleton
class Api {
  static const endpoint = 'https://jsonplaceholder.typicode.com';
  var clint = new http.Client();
  Future<List<Comment>> getComments(int postId) async {
    var comments = List<Comment>();
    var response = await clint.get('$endpoint/comments?postId=$postId');
    var parsed = json.decode(response.body) as List<dynamic>;
    for (var comment in parsed) {
      comments.add(Comment.fromJson(comment));
    }
    return comments;
  }

  Future<List<Post>> getPost(int userId) async {
    var posts = List<Post>();
    var response = await clint.get('$endpoint/posts?userId=$userId');
    var parsed = json.decode(response.body) as List<dynamic>;
    for (var post in parsed) {
      posts.add(Post.fromJson(post));
    }

    return posts;
  }

  Future<User> getUser(int userId) async {
    var response = await clint.get('$endpoint/users/$userId');
    return User.fromJson(json.decode(response.body));
  }
}
