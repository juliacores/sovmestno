import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting.freezed.dart';

part 'meeting.g.dart';

@freezed
class Meeting with _$Meeting {
  const factory Meeting({
    String? request,
    DateTime? dateTime,
    MeetingType? type,
    String? id
  }) = _Meeting;

  factory Meeting.fromJson(Map<String, dynamic> json) =>
      _$MeetingFromJson(json);
}

enum MeetingType {online,offline}