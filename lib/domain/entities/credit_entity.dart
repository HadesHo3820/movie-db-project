import 'package:the_movie_app/domain/entities/cast_entity.dart';
import 'package:the_movie_app/domain/entities/list_entity.dart';

class CreditEntity extends ListEntity {
  int? id;
  List<CastEntity>? cast;
  List<CastEntity>? crew;
  CreditEntity({
    this.id,
    this.cast,
    this.crew,
  });
}
