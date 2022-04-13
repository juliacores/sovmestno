import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';

part 'request.g.dart';

///создается во время получения запроса на наставничество от менти и идет в
///облачные функции для получения предложений по менторам
///Далее как пользователь выбирет ментора, будет создана модель [Session] в которую пенесенется реквест
@freezed
class Request with _$Request {
  const factory Request({
    ///от кого запрос
    String? mentiUserId,
    String? createdSessionId,
    String? id,
    ///кого предлагает алгоритм
    List<String>? mentorIds,
    ///кого выбрал менти
    String? selectedMentorId,
    String? requestText
  }) = _Request;

  factory Request.fromJson(Map<String, dynamic> json) =>
      _$RequestFromJson(json);
}
//
// @freezed
// class Match with _$Match {
//   const factory Match({
//     String? requestId,
//     List<String>? mentorIds
//   }) = _Match;
//
//   factory Match.fromJson(Map<String, dynamic> json) =>
//       _$MatchFromJson(json);
// }