import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_app/domain/entities/cast_entity.dart';

part 'cast_detail_event.freezed.dart';

@freezed
class CastDetailEvent with _$CastDetailEvent {
  const factory CastDetailEvent.getCastInfo(
      {required CastEntity castEntity, required bool isCast}) = GetCastInfo;
}
