import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sovmestno/domain/models/goal.dart';
import 'package:sovmestno/domain/models/meeting.dart';
import 'package:sovmestno/domain/models/request.dart';

part 'session.freezed.dart';

part 'session.g.dart';

@freezed
class Session with _$Session {
  const factory Session({
    String? id,
    Request? request,
    DateTime? createdBy,
    @JsonKey(fromJson: _fromIdToStatus, toJson: _fromStatusToId)
    SessionStatus? status,
    ///закрытые встречи, больше не модифицируются
    List<Meeting>? meetings,
    List<Goal>? goals,

  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}


_fromIdToStatus(int? id) {
  if(id==null) return null;
  return SessionStatus.values[id];
}

_fromStatusToId(SessionStatus? role) =>
    role == null ? null : (role.index);


enum SessionStatus{
  pending,
  onging,
  waitingReview,
  finished
}


extension ParseStatusToString on SessionStatus {
  String toRusString() {
    switch(this){
      case SessionStatus.pending:
        return 'Ожидает подтверждения';
      case SessionStatus.onging:
        return 'В работе';
      case SessionStatus.waitingReview:
        return 'Ожидает отзыва';
      case SessionStatus.finished:
        return 'Завершено';
    }
  }
}