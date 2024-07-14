

import 'package:hive_flutter/adapters.dart';
part 'auth_code_entities.g.dart';
@HiveType(typeId: 0)
class AuthCodeEntities {
@HiveField(0)
  final bool? status;
@HiveField(1)
  final dynamic messagee;
@HiveField(2)
  final int? id;
@HiveField(3)
  final String name;
@HiveField(4)
  final String email;
@HiveField(5)
  final String phone;
@HiveField(6)
  final String code;
@HiveField(7)
  final int? balance;
@HiveField(8)
  final String fcmToken;
@HiveField(9)
  final String statusUser;
  @HiveField(10)
  final String token;

  AuthCodeEntities( {
      required this.status,
      required this.messagee,
      required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.code,
      required this.balance,
      required this.fcmToken,
      required this.statusUser,
      required this.token});
}

