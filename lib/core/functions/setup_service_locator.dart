

import 'package:dio/dio.dart';
import 'package:yalla_client/core/dependencies/dependency_init.dart';
import 'package:yalla_client/core/network/api.dart';
import 'package:yalla_client/features/auth/data/datasources/code/code_local_data_source.dart';
import 'package:yalla_client/features/auth/data/datasources/code/code_remote_data_source.dart';
import 'package:yalla_client/features/auth/data/datasources/phone/phone_local_data_suorce.dart';
import 'package:yalla_client/features/auth/data/datasources/phone/phone_remote_data_suorce.dart';
import 'package:yalla_client/features/auth/data/repositories/auth_code_repo_impl.dart';
import 'package:yalla_client/features/auth/data/repositories/auth_phone_repo_impl.dart';

void setupSevicePhoneLocator() {
  getIt.registerSingleton<AuthPhoneRepoImpl>(AuthPhoneRepoImpl(
      phoneLocalDataSuorce: PhoneLocalDataSuorceImpl(),
      phoneRemoteDataSuorce: PhoneRemoteDataSourceImpl(Api())));
}

void setupServiceCodeLocator() {
  
  getIt.registerSingleton<AuthCodeRepositoriesimpl>(AuthCodeRepositoriesimpl(
      codeLocalDataSource: CodeLocalDataSourceImpl(),
      codeRemoteDataSource: CodeRemoteDataSourceImpl(Api())));
}