// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      gender: json['gender'] as String,
      dob: json['dob'] as String,
      profileImage: json['profileImage'] as String,
      country: json['country'] as String,
      id: json['id'] as String,
      fatherName: json['fatherName'] as String,
      age: json['age'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'gender': instance.gender,
      'dob': instance.dob,
      'profileImage': instance.profileImage,
      'country': instance.country,
      'id': instance.id,
      'fatherName': instance.fatherName,
      'age': instance.age,
    };
