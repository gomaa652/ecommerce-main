import 'package:yalla_client/core/error/failure.dart';
import 'package:yalla_client/features/auth/domain/entities/auth_phone_entities.dart';

import 'package:dartz/dartz.dart';

abstract class AuthPhoneRepositories {
  Future<Either<Failure,AuthPhoneEntities>> fetchFuturePhoneNumper(String phoneNumper);
}
