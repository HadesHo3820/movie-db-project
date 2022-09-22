import 'package:freezed_annotation/freezed_annotation.dart';
part 'trending_event.freezed.dart';

@freezed
class TrendingEvent with _$TrendingEvent {
  const factory TrendingEvent.getListTrending() = GetListTrending;
}
