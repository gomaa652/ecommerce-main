import 'package:yalla_client/features/auth/domain/entities/auth_code_entities.dart';

import 'data.dart';

class CodeModel extends AuthCodeEntities {
  bool? status;
  dynamic message;
  Data? data;

  CodeModel({this.status, this.message, this.data})
      : super(
            status: status,
            messagee: '$message',
            id: data!.id,
            name: data.name,
            email: data.email,
            phone: '${data.phone}',
            code: '${data.code}',
            balance: data.balance,
            fcmToken: '${data.fcmToken}',
            statusUser: '${data.status}',
            token: '${data.token}');

  factory CodeModel.fromJson(Map<String, dynamic> json) => CodeModel(
        status: json['status'] as bool?,
        message: json['message'] as dynamic,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.toJson(),
      };
}
