import 'package:the_movie_app/domain/entities/entity.dart';

abstract class InterfaceModel extends Entity {
  // for interface purpose
  InterfaceModel fromJson(dynamic json);
  Map<String, dynamic> toJson();
}
