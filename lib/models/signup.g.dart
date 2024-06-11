// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SignupAdapter extends TypeAdapter<Signup> {
  @override
  final int typeId = 1;

  @override
  Signup read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Signup(
      firstName: fields[1] as String?,
      lastName: fields[3] as String?,
      middleName: fields[5] as String?,
      age: fields[7] as int?,
      gender: fields[9] as String?,
      dateOfBirth: fields[11] as String?,
      marriedStatus: fields[13] as String?,
      countryCode: fields[15] as int?,
      phoneNumber: fields[17] as int?,
      email: fields[19] as String?,
      password: fields[21] as String?,
      hintPassword: fields[23] as String?,
      country: fields[25] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Signup obj) {
    writer
      ..writeByte(13)
      ..writeByte(1)
      ..write(obj.firstName)
      ..writeByte(3)
      ..write(obj.lastName)
      ..writeByte(5)
      ..write(obj.middleName)
      ..writeByte(7)
      ..write(obj.age)
      ..writeByte(9)
      ..write(obj.gender)
      ..writeByte(11)
      ..write(obj.dateOfBirth)
      ..writeByte(13)
      ..write(obj.marriedStatus)
      ..writeByte(15)
      ..write(obj.countryCode)
      ..writeByte(17)
      ..write(obj.phoneNumber)
      ..writeByte(19)
      ..write(obj.email)
      ..writeByte(21)
      ..write(obj.password)
      ..writeByte(23)
      ..write(obj.hintPassword)
      ..writeByte(25)
      ..write(obj.country);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignupAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Signup _$SignupFromJson(Map<String, dynamic> json) => Signup(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      middleName: json['middleName'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      marriedStatus: json['marriedStatus'] as String?,
      countryCode: (json['countryCode'] as num?)?.toInt(),
      phoneNumber: (json['phoneNumber'] as num?)?.toInt(),
      email: json['email'] as String?,
      password: json['password'] as String?,
      hintPassword: json['hintPassword'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$SignupToJson(Signup instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'age': instance.age,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
      'marriedStatus': instance.marriedStatus,
      'countryCode': instance.countryCode,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'password': instance.password,
      'hintPassword': instance.hintPassword,
      'country': instance.country,
    };
