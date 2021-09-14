import 'package:json_annotation/json_annotation.dart';

part 'member.g.dart';

@JsonSerializable()
class MemberModel {
  late final int memberId;
  late final String memberName;
  late final String memberEmail;
  late final String memberPassword;
  late final DateTime createdAt;
}