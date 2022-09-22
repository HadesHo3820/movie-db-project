import 'package:freezed_annotation/freezed_annotation.dart';
part 'top_rated_event.freezed.dart';

@freezed
class TopRatedEvent with _$TopRatedEvent {
  const factory TopRatedEvent.getListTopRated() = GetListTopRated;
}
