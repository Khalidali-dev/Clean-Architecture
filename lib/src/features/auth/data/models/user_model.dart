import '../../../../src.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel(
      {required String name,
      required String email,
      required String phone,
      required String address,
      required String gender,
      required String dob,
      required String profileImage,
      required String country,
      required String id,
      required String fatherName,
      required String age}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

extension UserExtension on UserModel {
  UserEntity toEntity() => UserEntity(
        name: name,
        email: email,
        phone: phone,
        address: address,
        gender: gender,
        dob: dob,
        profileImage: profileImage,
        country: country,
        id: id,
        fatherName: fatherName,
        age: age,
      );
}
