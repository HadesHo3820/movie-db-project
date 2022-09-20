class AccountEntity {
  Avatar? avatar;
  int? id;
  String? iso6391;
  String? iso31661;
  String? name;
  bool? includeAdult;
  String? username;

  AccountEntity(
      {this.avatar,
      this.id,
      this.iso6391,
      this.iso31661,
      this.name,
      this.includeAdult,
      this.username});
}

class Avatar {
  Gravatar? gravatar;

  Avatar({this.gravatar});

  Avatar.fromJson(Map<String, dynamic> json) {
    gravatar =
        json['gravatar'] != null ? Gravatar.fromJson(json['gravatar']) : null;
  }

  Map<String, dynamic> toJson() => {"gravatar": gravatar!.toJson()};
}

class Gravatar {
  String? hash;

  Gravatar({this.hash});

  Gravatar.fromJson(Map<String, dynamic> json) {
    hash = json['hash'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hash'] = hash;
    return data;
  }
}
