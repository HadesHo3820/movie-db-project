import 'package:the_movie_app/domain/entities/entity.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';

class CastEntity implements Entity {
  bool? adult;
  int? gender;
  int? id;
  Department? knownForDepartment;
  String? name;
  String? originalName;
  double? popularity;
  String? profilePath;
  int? castId;
  String? character;
  String? creditId;
  int? order;
  Department? department;
  String? job;
  List<MovieEntity>? knowFor;
  String? birthday;
  String? deathday;
  String? biography;
  String? placeOfBirth;
  CastEntity({
    this.adult,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.castId,
    this.character,
    this.creditId,
    this.order,
    this.department,
    this.job,
    this.knowFor,
    this.birthday,
    this.deathday,
    this.biography,
    this.placeOfBirth,
  });
}

enum Department {
  ACTING,
  SOUND,
  CREW,
  EDITING,
  PRODUCTION,
  ART,
  WRITING,
  DIRECTING,
  CAMERA,
  COSTUME_MAKE_UP,
  VISUAL_EFFECTS,
  LIGHTING
}
