import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:my_app/app/datamodels/comment.dart';
import 'package:http/http.dart' as http;

@lazySingleton
class Api {
  Future<List<Comment>> getComments(int postId) async {
    var comments = List<Comment>();
    var response = await http
        .get('https://jsonplaceholder.typicode.com/comments?postId=$postId');
    var parsed = json.decode(response.body) as List<dynamic>;
    for (var comment in parsed) {
      comments.add(Comment.fromJson(comment));
    }
    return comments;
  }
}
