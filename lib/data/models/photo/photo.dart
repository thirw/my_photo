import 'package:json_annotation/json_annotation.dart';
import 'package:my_photo/utils/custom_date_time_converter.dart';

part 'photo.g.dart';

@JsonSerializable()
class Photo {
  int statusCode;
  List<Items> data;

  Photo(this.statusCode, this.data);

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson(instance) => _$PhotoToJson(this);
}


@JsonSerializable()
@CustomDateTimeConverter()
class Items {
  late int photosId;
  late String memberName;
  late String photoName;
  late String createdAt;
  late String photosPath;

  Items(this.photosId, this.memberName, this.photoName, this.createdAt,
      this.photosPath);

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

  Map<String, dynamic> toJson(instance) => _$ItemsToJson(this);
}
