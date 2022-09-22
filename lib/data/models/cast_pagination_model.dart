import 'package:the_movie_app/data/models/cast_model.dart';
import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/domain/entities/cast_pagination_entity.dart';

class CastPaginationModel extends CastPaginationEntity
    implements InterfaceModel {
  CastPaginationModel._internal();
  static final CastPaginationModel _singleton = CastPaginationModel._internal();
  factory CastPaginationModel.getInstance() => _singleton;

  CastPaginationModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    results =
        List<CastModel>.from(json["results"].map((x) => CastModel.fromJson(x)));
    totalResult = json['total_results'];
    totalPage = json['total_pages'];
  }

  @override
  InterfaceModel fromJson(json) {
    page = json['page'];
    results =
        List<CastModel>.from(json["results"].map((x) => CastModel.fromJson(x)));
    totalResult = json['total_results'];
    totalPage = json['total_pages'];
    return this;
  }

  @override
  Map<String, dynamic> toJson() => {
        'page': page,
        'results':
            List<dynamic>.from(results!.map((e) => (e as CastModel).toJson())),
        'total_results': totalResult,
        'total_pages': totalPage
      };
}
