import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yalla_client/core/error/failure.dart';
import 'package:yalla_client/features/auth/data/datasources/phone/phone_local_data_suorce.dart';
import 'package:yalla_client/features/auth/data/datasources/phone/phone_remote_data_suorce.dart';
import 'package:yalla_client/features/auth/domain/entities/auth_phone_entities.dart';
import 'package:yalla_client/features/auth/domain/repositories/auth_phone_repositories.dart';

class AuthPhoneRepoImpl extends AuthPhoneRepositories {
  final PhoneRemoteDataSourceImpl phoneRemoteDataSuorce;
  final PhoneLocalDataSuorceImpl phoneLocalDataSuorce;

  AuthPhoneRepoImpl(
      {required this.phoneRemoteDataSuorce,
      required this.phoneLocalDataSuorce});

  @override
  Future<Either<Failure, AuthPhoneEntities>> fetchFuturePhoneNumper(
      String phoneNumper) async {
    try {
      var phoneNumber =
          await phoneRemoteDataSuorce.fetchFuturePhoneNumper(phoneNumper);
      return right(phoneNumber);
    } catch (e) {
      print(e);
      if (e is DioException) {
        print(ServerFailure.fromDioError(e));
        return left(ServerFailure.fromDioError(e));
      } else {
        print(ServerFailure(e.toString()));
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
