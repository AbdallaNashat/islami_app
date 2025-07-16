import 'package:islami/core/services/api/models/domain/entity/reciter_entity.dart';

abstract interface class RadioRemoteDataSource {
  Future<List<ReciterEntity>> getReciters();
}