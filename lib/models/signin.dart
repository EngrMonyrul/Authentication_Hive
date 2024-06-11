import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'signin.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class Signin {
  @HiveField(1)
  @JsonKey(name: "email")
  final String? email;
  @HiveField(3)
  @JsonKey(name: "phone")
  final int? phone;
  @HiveField(5)
  @JsonKey(name: "countryCode")
  final int? countryCode;
  @HiveField(7)
  @JsonKey(name: "password")
  final String? password;

  Signin({
    this.email,
    this.phone,
    this.countryCode,
    this.password,
  });

  Signin copyWith({
    String? email,
    int? phone,
    int? countryCode,
    String? password,
  }) =>
      Signin(
        email: email ?? this.email,
        phone: phone ?? this.phone,
        countryCode: countryCode ?? this.countryCode,
        password: password ?? this.password,
      );

  factory Signin.fromJson(Map<String, dynamic> json) => _$SigninFromJson(json);

  Map<String, dynamic> toJson() => _$SigninToJson(this);
}
