import 'package:freezed_annotation/freezed_annotation.dart';


part 'goal.freezed.dart';

part 'goal.g.dart';

@freezed
class Goal with _$Goal {
  const factory Goal({
    String? id,
    String? goal,
    String? metrics,
    bool? status,
    DateTime? deadline,
  }) = _Goal;

  factory Goal.fromJson(Map<String, dynamic> json) =>
      _$GoalFromJson(json);
}