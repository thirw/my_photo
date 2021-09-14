import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

@JsonSerializable()
class PhotoResponse {
  late final int photosId;
  late final int memberId;
  late final DateTime createdAt;
  late final String photosPath;
}