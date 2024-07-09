import 'package:hive_flutter/adapters.dart';
import 'package:yalla_client/core/constants/hive_ids.dart';
import 'package:yalla_client/features/auth/domain/entities/auth_code_entities.dart';

abstract class CodeLocalDataSource {
  AuthCodeEntities fetchFutureCodeNumper(String codeNumper);
}

class CodeLocalDataSourceImpl extends CodeLocalDataSource {
  @override
  AuthCodeEntities fetchFutureCodeNumper(String codeNumper) {
    var box = Hive.box<AuthCodeEntities>(kFeaturedDetilsUserBox);
    return box.values.first;
  }
}
