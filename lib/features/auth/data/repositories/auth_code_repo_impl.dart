import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:yalla_client/core/error/failure.dart';
import 'package:yalla_client/features/auth/data/datasources/code/code_local_data_source.dart';
import 'package:yalla_client/features/auth/data/datasources/code/code_remote_data_source.dart';
import 'package:yalla_client/features/auth/domain/entities/auth_code_entities.dart';
import 'package:yalla_client/features/auth/domain/repositories/auth_code_repositories.dart';

class AuthCodeRepositoriesimpl extends AuthCodeRepositories {
  final CodeRemoteDataSource codeRemoteDataSource;
  final CodeLocalDataSource codeLocalDataSource;

  AuthCodeRepositoriesimpl(
      {required this.codeRemoteDataSource, required this.codeLocalDataSource});
  @override
  Future<Either<Failure, AuthCodeEntities>> fetchFutureCodeNumper(
      String codeNumper) async {
    try {
      // var codeNumerLocal =
      //     codeLocalDataSource.fetchFutureCodeNumper(codeNumper);
      // if (codeNumerLocal.status == true) {
      //   return right(codeNumerLocal);
      // }
      var codeNumber =
          await codeRemoteDataSource.fetchFutureCodeNumper(codeNumper);
      return right(codeNumber);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
