import 'package:the_movie_app/data/models/cast_model.dart';
import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/data/models/movie_model.dart';
import 'package:the_movie_app/domain/entities/pagination_entity.dart';

class PaginationModel<T> extends PaginationEntity implements InterfaceModel {
  PaginationModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    results = List<T>.from(json["results"].map((x) {
      switch (T) {
        case MovieModel:
          return MovieModel.fromJson(x);
        case CastModel:
          return CastModel.fromJson(x);
        default:
          throw UnimplementedError();
      }
    }));
    totalResult = json['total_results'];
    totalPage = json['total_pages'];
  }
  @override
  InterfaceModel fromJson(json) {
    page = json['page'];
    results = List<T>.from(json["results"].map((x) {
      switch (T) {
        case MovieModel:
          return MovieModel.fromJson(x);
        case CastModel:
          return CastModel.fromJson(x);
        default:
          throw UnimplementedError();
      }
    }));
    totalResult = json['total_results'];
    totalPage = json['total_pages'];
    return this;
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
