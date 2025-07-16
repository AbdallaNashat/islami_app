import 'package:islami/core/services/api/models/domain/entity/reciter_entity.dart';

abstract class RadioRepo{

  Future<List<ReciterEntity>> getReciters(String language);

}