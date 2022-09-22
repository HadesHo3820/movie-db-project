import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/data/models/movie_model.dart';
import 'package:the_movie_app/domain/entities/cast_entity.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';

final departmentValues = EnumValues({
  "": Department.ACTING,
  "Art": Department.ART,
  "Camera": Department.CAMERA,
  "Costume & Make-Up": Department.COSTUME_MAKE_UP,
  "Crew": Department.CREW,
  "Directing": Department.DIRECTING,
  "Editing": Department.EDITING,
  "Lighting": Department.LIGHTING,
  "Production": Department.PRODUCTION,
  "Sound": Department.SOUND,
  "Visual Effects": Department.VISUAL_EFFECTS,
  "Writing": Department.WRITING
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;
  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((key, value) => MapEntry(value, key));
    return reverseMap;
  }
}

class CastModel extends CastEntity implements InterfaceModel {
  CastModel.fromJson(Map<String, dynamic> json) {
    adult = json["adult"] ?? adult;
    gender = json["gender"] ?? gender;
    id = json["id"] ?? id;
    knownForDepartment = departmentValues.map[json["known_for_department"]] ??
        knownForDepartment;
    name = json["name"] ?? name;
    originalName = json["original_name"] ?? originalName;
    popularity = json["popularity"];
    profilePath = json["profile_path"] ?? profilePath;
    castId = json["cast_id"] ?? castId;
    character = json["character"] ?? character;
    creditId = json["credit_id"] ?? creditId;
    order = json["order"] ?? order;
    department = departmentValues.map[json["department"]] ?? department;
    job = json["job"] ?? job;
  }

  @override
  Map<String, dynamic> toJson() => {
        "adult": adult,
        "gender": gender,
        "id": id,
        "known_for_department": departmentValues.reverse[knownForDepartment],
        "name": name,
        "original_name": originalName,
        "popularity": popularity,
        "profile_path": profilePath,
        "cast_id": castId,
        "character": character,
        "credit_id": creditId,
        "order": order,
        "department":
            department == null ? null : departmentValues.reverse[department],
        "job": job
      };

  void addCareer(dynamic json, bool isCast) {
    List<dynamic> listMovie = isCast ? json['cast'] : json['crew'];
    knowFor = listMovie.isNotEmpty
        ? List<MovieEntity>.from(listMovie.map((x) => MovieModel.fromJson(x)))
        : knowFor;
  }

  void addPersonDetailInfo(dynamic json) {
    birthday = json['birthday'] ?? birthday;
    deathday = json['deathday'] ?? deathday;
    biography = json['biography'] ?? biography;
    placeOfBirth = json['place_of_birth'] ?? placeOfBirth;
  }

  @override
  InterfaceModel fromJson(json) {
    adult = json["adult"] ?? adult;
    gender = json["gender"] ?? gender;
    id = json["id"] ?? id;
    knownForDepartment = departmentValues.map[json["known_for_department"]] ??
        knownForDepartment;
    name = json["name"] ?? name;
    originalName = json["original_name"] ?? originalName;
    popularity = json["popularity"];
    profilePath = json["profile_path"] ?? profilePath;
    castId = json["cast_id"] ?? castId;
    character = json["character"] ?? character;
    creditId = json["credit_id"] ?? creditId;
    order = json["order"] ?? order;
    department = departmentValues.map[json["department"]] ?? department;
    job = json["job"] ?? job;
    return this;
  }
}
