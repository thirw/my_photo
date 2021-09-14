// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberModel _$MemberModelFromJson(Map<String, dynamic> json) => MemberModel()
  ..memberId = json['memberId'] as int
  ..memberName = json['memberName'] as String
  ..memberEmail = json['memberEmail'] as String
  ..memberPassword = json['memberPassword'] as String
  ..createdAt = DateTime.parse(json['createdAt'] as String);

Map<String, dynamic> _$MemberModelToJson(MemberModel instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'memberName': instance.memberName,
      'memberEmail': instance.memberEmail,
      'memberPassword': instance.memberPassword,
      'createdAt': instance.createdAt.toIso8601String(),
    };
