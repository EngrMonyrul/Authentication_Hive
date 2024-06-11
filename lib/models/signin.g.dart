// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SigninAdapter extends TypeAdapter<Signin> {
  @override
  final int typeId = 2;

  @override
  Signin read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Signin(
      email: fields[1] as String?,
      phone: fields[3] as int?,
      countryCode: fields[5] as int?,
      password: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Signin obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(5)
      ..write(obj.countryCode)
      ..writeByte(7)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SigninAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Signin _$SigninFromJson(Map<String, dynamic> json) => Signin(
      email: json['email'] as String?,
      phone: (json['phone'] as num?)?.toInt(),
      countryCode: (json['countryCode'] as num?)?.toInt(),
      password: json['password'] as String?,
    );

Map<String, dynamic> _$SigninToJson(Signin instance) => <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'countryCode': instance.countryCode,
      'password': instance.password,
    };
