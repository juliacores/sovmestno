import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    String? id,
    String? avatarImage,
    String? email,
    String? firstName,
    String? lastName,
    @JsonKey(fromJson: _fromIdToRole, toJson: _fromRoleToId)
        AccountRole? status,
    List? tags,
    String? description,
    String? age,
    String? city,
    List? skills,
    String? experience,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

_fromIdToRole(int? id) {
  if (id == 0)
    return AccountRole.mentor;
  else if (id == 1)
    return AccountRole.menti;
  else
    return null;
}

_fromRoleToId(AccountRole? role) =>
    role == null ? null : (role == AccountRole.mentor ? 0 : 1);

enum AccountRole { mentor, menti }
