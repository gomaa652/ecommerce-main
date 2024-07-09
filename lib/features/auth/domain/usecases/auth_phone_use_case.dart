import 'package:dartz/dartz.dart';
import 'package:yalla_client/core/error/failure.dart';
import 'package:yalla_client/core/use_case/use_case.dart';
import 'package:yalla_client/features/auth/domain/entities/auth_phone_entities.dart';
import 'package:yalla_client/features/auth/domain/repositories/auth_phone_repositories.dart';


class FetchFeaturedPhoneNumperUseCase
    extends UseCase<Either<Failure, AuthPhoneEntities>, String> {
  final AuthPhoneRepositories authPhoneRepositories ;
  FetchFeaturedPhoneNumperUseCase(this.authPhoneRepositories);

  @override
  Future<Either<Failure, AuthPhoneEntities>> call({required String params}) {
    return authPhoneRepositories.fetchFuturePhoneNumper(params);
  }
}
