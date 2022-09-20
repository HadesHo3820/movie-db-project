import 'package:freezed_annotation/freezed_annotation.dart';
part 'upcoming_event.freezed.dart';

@freezed
class UpcomingEvent with _$UpcomingEvent {
  const factory UpcomingEvent.getListUpcoming() = GetListUpcoming;
}
