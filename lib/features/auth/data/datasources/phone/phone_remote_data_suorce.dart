import 'package:yalla_client/core/network/api.dart';
import 'package:yalla_client/features/auth/data/models/phone_model.dart';
import 'package:yalla_client/features/auth/domain/entities/auth_phone_entities.dart';

abstract class PhoneRemoteDataSuorce {
  Future<AuthPhoneEntities> fetchFuturePhoneNumper(String phoneNumper);
}

class PhoneRemoteDataSourceImpl extends PhoneRemoteDataSuorce {
  final Api api;

  PhoneRemoteDataSourceImpl(this.api);
  @override
  Future<AuthPhoneEntities> fetchFuturePhoneNumper(String phoneNumper) async {
    var data = await api.geted(
        endPoint: 'send-code?phone=$phoneNumper&fcm_token=12345grsgsreers');
    print(data);
    return PhoneModel.fromJson(data);
  }
}
