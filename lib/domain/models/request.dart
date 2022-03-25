import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';

part 'request.g.dart';

@freezed
class Request with _$Request {
  const factory Request({
    String? userId,
    bool? matched,
    String? id
  }) = _Request;

  factory Request.fromJson(Map<String, dynamic> json) =>
      _$RequestFromJson(json);
}

@freezed
class Match with _$Match {
  const factory Match({
    String? requestId,
    List<String>? mentorIds
  }) = _Match;

  factory Match.fromJson(Map<String, dynamic> json) =>
      _$MatchFromJson(json);
}