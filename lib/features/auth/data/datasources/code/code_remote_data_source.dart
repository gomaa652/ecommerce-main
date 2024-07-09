import 'package:hive_flutter/adapters.dart';
import 'package:yalla_client/core/constants/hive_ids.dart';
import 'package:yalla_client/core/network/api.dart';
import 'package:yalla_client/features/auth/data/models/code_model/code_model.dart';
import 'package:yalla_client/features/auth/domain/entities/auth_code_entities.dart';

abstract class CodeRemoteDataSource {
  Future<AuthCodeEntities> fetchFutureCodeNumper(String codeNumper);
}

class CodeRemoteDataSourceImpl extends CodeRemoteDataSource {
  final Api api;

  CodeRemoteDataSourceImpl(this.api);
  @override
  Future<AuthCodeEntities> fetchFutureCodeNumper(String codeNumper) async {
    var data = await api.geted(
        endPoint: 'check-code?phone=01115077582&code=$codeNumper');
    var box = Hive.box(kFeaturedDetilsUserBox);
    var dataFromJson = CodeModel.fromJson(data);
    box.add(dataFromJson);
    return CodeModel.fromJson(data);
  }
}
