import 'package:the_movie_app/domain/entities/list_entity.dart';

abstract class ListModel extends ListEntity {
  // for interface
  ListModel fromJson(dynamic json);
  Map<String, dynamic> toJson();
}
