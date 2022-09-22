import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/domain/entities/video_entity.dart';

class VideoModel extends VideoEntity implements InterfaceModel {
  VideoModel.fromJson(dynamic json) {
    iso6391 = json["iso_639_1"];
    iso31661 = json["iso_3166_1"];
    name = json["name"];
    key = json["key"];
    publishedAt = json["published_at"].toString();
    site = json["site"];
    size = json["size"];
    type = json["type"];
    official = json["official"];
    id = json["id"];
  }

  @override
  InterfaceModel fromJson(json) {
    return this;
  }

  @override
  Map<String, dynamic> toJson() => {
        "iso_639_1": iso6391,
        "iso_3166_1": iso31661,
        "name": name,
        "key": key,
        "published_at": publishedAt,
        "site": site,
        "size": size,
        "type": type,
        "official": official,
        "id": id,
      };
}
