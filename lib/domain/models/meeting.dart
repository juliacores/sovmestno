import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting.freezed.dart';

part 'meeting.g.dart';

///создается в риал тайм бд и ждем подтверждения ментора
@freezed
class Meeting with _$Meeting {
  const factory Meeting({
    String? id,
    String? sessionId,
    String? request,
    String? results,
    DateTime? dateTime,
    MeetingType? type,
  }) = _Meeting;

  factory Meeting.fromJson(Map<String, dynamic> json) =>
      _$MeetingFromJson(json);
}

enum MeetingType {online,offline}