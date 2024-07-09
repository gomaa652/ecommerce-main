

import 'package:dartz/dartz.dart';
import 'package:yalla_client/core/error/failure.dart';
import 'package:yalla_client/features/auth/domain/entities/auth_code_entities.dart';

abstract class AuthCodeRepositories {
  Future<Either<Failure,AuthCodeEntities>> fetchFutureCodeNumper(String codeNumper);
}
  