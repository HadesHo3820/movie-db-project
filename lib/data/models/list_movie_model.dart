import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/data/models/list_model.dart';
import 'package:the_movie_app/data/models/movie_model.dart';

class ListMovieModel extends ListModel {
  ListMovieModel.getInstance() {
    items = <InterfaceModel>[];
  }
  ListMovieModel(ListMovieModel reviews) {
    items = reviews.items;
  }

  ListMovieModel.fromJson(dynamic json) {
    items = <MovieModel>[];
    final List listJson = json['items'] ?? json['results'];
    for (dynamic object in listJson) {
      items!.add(MovieModel.fromJson(object));
    }
  }

  @override
  ListModel fromJson(json) {
    items = <InterfaceModel>[];
    final List listJson = json['items'] ?? json['results'];
    for (dynamic object in listJson) {
      items!.add(MovieModel.fromJson(object));
    }
    return ListMovieModel(this);
  }

  @override
  Map<String, dynamic> toJson() =>
      {'results': items!.map((e) => (e as MovieModel).toJson())};
}
