

import 'package:yalla_client/features/auth/domain/entities/auth_phone_entities.dart';

abstract class PhoneLocalDataSuorce {
AuthPhoneEntities fetchFuturePhoneNumper(String phoneNumper);
}

class PhoneLocalDataSuorceImpl extends PhoneLocalDataSuorce {
  @override
  AuthPhoneEntities fetchFuturePhoneNumper(String phoneNumper) {
    // TODO: implement fetchFuturePhoneNumper
    throw UnimplementedError();
  }
}