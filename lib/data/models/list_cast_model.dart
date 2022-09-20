import 'package:the_movie_app/data/models/cast_model.dart';
import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/data/models/list_model.dart';

class ListCastModel extends ListModel {
  ListCastModel.getInstance() {
    items = <InterfaceModel>[];
  }

  ListCastModel(ListCastModel reviews) {
    items = reviews.items;
  }

  ListCastModel.fromJson(dynamic json) {
    items = <CastModel>[];
    final List listJson = json['items'] ?? json['results'];
    for (dynamic object in listJson) {
      items!.add(CastModel.fromJson(object));
    }
  }

  @override
  ListModel fromJson(json) {
    items = <InterfaceModel>[];
    final List listJson = json['items'] ?? json['results'];
    for (dynamic object in listJson) {
      items!.add(CastModel.fromJson(object));
    }
    return ListCastModel(this);
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
