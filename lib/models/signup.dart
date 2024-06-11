import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'signup.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class Signup {
  @HiveField(1)
  @JsonKey(name: "firstName")
  final String? firstName;
  @HiveField(3)
  @JsonKey(name: "lastName")
  final String? lastName;
  @HiveField(5)
  @JsonKey(name: "middleName")
  final String? middleName;
  @HiveField(7)
  @JsonKey(name: "age")
  final int? age;
  @HiveField(9)
  @JsonKey(name: "gender")
  final String? gender;
  @HiveField(11)
  @JsonKey(name: "dateOfBirth")
  final String? dateOfBirth;
  @HiveField(13)
  @JsonKey(name: "marriedStatus")
  final String? marriedStatus;
  @HiveField(15)
  @JsonKey(name: "countryCode")
  final int? countryCode;
  @HiveField(17)
  @JsonKey(name: "phoneNumber")
  final int? phoneNumber;
  @HiveField(19)
  @JsonKey(name: "email")
  final String? email;
  @HiveField(21)
  @JsonKey(name: "password")
  final String? password;
  @HiveField(23)
  @JsonKey(name: "hintPassword")
  final String? hintPassword;
  @HiveField(25)
  @JsonKey(name: "country")
  final String? country;

  Signup({
    this.firstName,
    this.lastName,
    this.middleName,
    this.age,
    this.gender,
    this.dateOfBirth,
    this.marriedStatus,
    this.countryCode,
    this.phoneNumber,
    this.email,
    this.password,
    this.hintPassword,
    this.country,
  });

  Signup copyWith({
    String? firstName,
    String? lastName,
    String? middleName,
    int? age,
    String? gender,
    String? dateOfBirth,
    String? marriedStatus,
    int? countryCode,
    int? phoneNumber,
    String? email,
    String? password,
    String? hintPassword,
    String? country,
  }) =>
      Signup(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        middleName: middleName ?? this.middleName,
        age: age ?? this.age,
        gender: gender ?? this.gender,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        marriedStatus: marriedStatus ?? this.marriedStatus,
        countryCode: countryCode ?? this.countryCode,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        email: email ?? this.email,
        password: password ?? this.password,
        hintPassword: hintPassword ?? this.hintPassword,
        country: country ?? this.country,
      );

  factory Signup.fromJson(Map<String, dynamic> json) => _$SignupFromJson(json);

  Map<String, dynamic> toJson() => _$SignupToJson(this);
}
