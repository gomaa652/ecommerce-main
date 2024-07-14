// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_code_entities.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthCodeEntitiesAdapter extends TypeAdapter<AuthCodeEntities> {
  @override
  final int typeId = 0;

  @override
  AuthCodeEntities read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthCodeEntities(
      status: fields[0] as bool?,
      messagee: fields[1] as dynamic,
      id: fields[2] as int?,
      name: fields[3] as String,
      email: fields[4] as String,
      phone: fields[5] as String,
      code: fields[6] as String,
      balance: fields[7] as int?,
      fcmToken: fields[8] as String,
      statusUser: fields[9] as String,
      token: fields[10] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AuthCodeEntities obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.messagee)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.phone)
      ..writeByte(6)
      ..write(obj.code)
      ..writeByte(7)
      ..write(obj.balance)
      ..writeByte(8)
      ..write(obj.fcmToken)
      ..writeByte(9)
      ..write(obj.statusUser)
      ..writeByte(10)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthCodeEntitiesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
