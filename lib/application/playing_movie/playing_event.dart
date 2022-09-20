import 'package:freezed_annotation/freezed_annotation.dart';
part 'playing_event.freezed.dart';

@freezed
class PlayingEvent with _$PlayingEvent {
  const factory PlayingEvent.getListPopular() = GetListPlaying;
}
