import 'package:json_annotation/json_annotation.dart';

part 'User.g.dart';

@JsonSerializable(nullable: false)
class User {
  final String email;
  final String password;
  User({this.email, this.password});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
