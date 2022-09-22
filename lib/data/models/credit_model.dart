import 'package:the_movie_app/data/models/cast_model.dart';
import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/domain/entities/credit_entity.dart';

class CreditModel extends CreditEntity implements InterfaceModel {
  CreditModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    cast = List<CastModel>.from(json["cast"].map((x) => CastModel.fromJson(x)));
    crew = List<CastModel>.from(json["crew"].map((x) => CastModel.fromJson(x)));
  }

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "cast": List<dynamic>.from(cast!.map((e) => (e as CastModel).toJson())),
        "crew": List<dynamic>.from(crew!.map((e) => (e as CastModel).toJson())),
      };

  @override
  InterfaceModel fromJson(json) {
    id = json["id"];
    cast = List<CastModel>.from(json["cast"].map((x) => CastModel.fromJson(x)));
    crew = List<CastModel>.from(json["crew"].map((x) => CastModel.fromJson(x)));
    return this;
  }
}
