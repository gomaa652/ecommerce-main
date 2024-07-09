import 'package:dartz/dartz.dart';
import 'package:yalla_client/core/error/failure.dart';
import 'package:yalla_client/core/use_case/use_case.dart';
import 'package:yalla_client/features/auth/domain/entities/auth_code_entities.dart';
import 'package:yalla_client/features/auth/domain/repositories/auth_code_repositories.dart';

class FetchFeaturedCodeNumperUseCase
    extends UseCase<Either<Failure, AuthCodeEntities>, String> {
  final AuthCodeRepositories authCodeRepositories;

  FetchFeaturedCodeNumperUseCase(this.authCodeRepositories);

  @override
  Future<Either<Failure, AuthCodeEntities>> call({required String params}) {
    return authCodeRepositories.fetchFutureCodeNumper(params);
  }
}
