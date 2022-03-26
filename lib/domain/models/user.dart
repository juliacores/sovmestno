import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
   factory UserModel({
    String? id,
    String? avatarImage,
    String? email,
    String? firstName,
    String? lastName,
    @JsonKey(fromJson: _fromIdToRole, toJson: _fromRoleToId)
        AccountRole? status,
    List<String>? tags,
    String? description,
    String? age,
    String? city,
    List<String>? skills,
    String? experience,
    List<String>? matchedUsers,
    List<String>? connectedUsers,
    String? carrierRole
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  UserModel._();

  String? get name => firstName! + ' ' +lastName!;
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

extension ParseRoleToString on AccountRole {
  String toRusString() {
    switch(this){
      case AccountRole.mentor:
       return 'Ментор';
      case AccountRole.menti:
        return 'Менти';
    }
  }
}

// extension on AccountRole {
//
// }
