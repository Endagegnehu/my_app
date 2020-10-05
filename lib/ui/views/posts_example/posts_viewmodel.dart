import 'package:my_app/app/datamodels/post.dart';
import 'package:my_app/app/locatore.dart';
import 'package:my_app/app/services/api.dart';
import 'package:stacked/stacked.dart';

class PostsViewModel extends FutureViewModel<List<Post>> {
  var postlocatore = locatore<Api>();
  @override
  Future<List<Post>> futureToRun() => postlocatore.getPost(4);
}
