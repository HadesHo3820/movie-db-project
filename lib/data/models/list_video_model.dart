import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/data/models/list_model.dart';
import 'package:the_movie_app/data/models/video_model.dart';

class ListVideoModel extends ListModel {
  ListVideoModel.getInstance() {
    items = <InterfaceModel>[];
  }

  ListVideoModel(ListVideoModel reviews) {
    items = reviews.items;
  }

  @override
  ListModel fromJson(json) {
    items = <InterfaceModel>[];
    final List listJson = json['items'] ?? json['results'];
    for (dynamic object in listJson) {
      items?.add(VideoModel.fromJson(object));
    }
    return ListVideoModel(this);
  }

  @override
  Map<String, dynamic> toJson() =>
      {'results': items?.map((e) => (e as VideoModel).toJson()).toList()};
}
