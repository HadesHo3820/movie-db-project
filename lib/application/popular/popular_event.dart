import 'package:freezed_annotation/freezed_annotation.dart';
part 'popular_event.freezed.dart';

@freezed
class PopularEvent with _$PopularEvent {
  const factory PopularEvent.getListPopular() = GetListPopular;
}
