// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoResponse _$PhotoResponseFromJson(Map<String, dynamic> json) =>
    PhotoResponse()
      ..photosId = json['photosId'] as int
      ..memberId = json['memberId'] as int
      ..createdAt = DateTime.parse(json['createdAt'] as String)
      ..photosPath = json['photosPath'] as String;

Map<String, dynamic> _$PhotoResponseToJson(PhotoResponse instance) =>
    <String, dynamic>{
      'photosId': instance.photosId,
      'memberId': instance.memberId,
      'createdAt': instance.createdAt.toIso8601String(),
      'photosPath': instance.photosPath,
    };
