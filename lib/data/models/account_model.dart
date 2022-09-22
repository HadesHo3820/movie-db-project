import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/domain/entities/account_entity.dart';

class AccountModel extends AccountEntity implements InterfaceModel {
  AccountModel._internal();
  static final AccountModel _singleton = AccountModel._internal();
  factory AccountModel.getInstance() => _singleton;

  AccountModel.fromJson(Map<String, dynamic> json) {
    avatar = json['avatar'] != null ? Avatar.fromJson(json['avatar']) : null;
    id = json['id'];
    iso6391 = json['iso_639_1'];
    iso31661 = json['iso_3166_1'];
    name = json['name'];
    includeAdult = json['include_adult'];
    username = json['username'];
  }

  @override
  InterfaceModel fromJson(json) {
    avatar = json['avatar'] != null ? Avatar.fromJson(json['avatar']) : null;
    id = json['id'];
    iso6391 = json['iso_639_1'];
    iso31661 = json['iso_3166_1'];
    name = json['name'];
    includeAdult = json['include_adult'];
    username = json['username'];

    return this;
  }

  @override
  Map<String, dynamic> toJson() => {
        "avatar": avatar!.toJson(),
        "id": id,
        "iso_639_1": iso6391,
        "iso_3166_1": iso31661,
        "name": name,
        "include_adult": includeAdult,
        "username": username,
      };
}
