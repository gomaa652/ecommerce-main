import 'package:yalla_client/features/auth/domain/entities/auth_phone_entities.dart';

class PhoneModel extends AuthPhoneEntities {
  bool? status;
  String? message;
  dynamic data;

  PhoneModel({this.status, this.message, this.data})
      : super(statuss: true, messagee: '$message', dataa: '$data');

  factory PhoneModel.fromJson(Map<String, dynamic> json) => PhoneModel(
        status: json['status'] as bool?,
        message: json['message'] as String?,
        data: json['data'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data,
      };
}
