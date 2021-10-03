// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photo _$PhotoFromJson(Map<String, dynamic> json) => Photo(
      (json['data'] as List<dynamic>)
          .map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'data': instance.data,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      json['id'] as int,
      json['memberId'] as int,
      json['memberName'] as String,
      json['name'] as String,
      json['path'] as String,
      json['updatedAt'] as String,
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'memberName': instance.memberName,
      'name': instance.name,
      'path': instance.path,
      'updatedAt': instance.updatedAt,
    };
