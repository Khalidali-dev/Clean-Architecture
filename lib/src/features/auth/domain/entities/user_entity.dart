import '../../../../src.dart';
part 'user_entity.freezed.dart';


@freezed
class UserEntity with _$UserEntity {
  factory UserEntity(
      {required String phone,
      required String gender,
      required String profileImage,
      required String name,
      required String email,
      required String id,
      required String age,
      required String fatherName,
      required String dob,
      required String address,
      required String country}) = _UserEntity;
}
