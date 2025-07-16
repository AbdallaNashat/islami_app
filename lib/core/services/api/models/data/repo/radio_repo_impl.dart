import 'package:injectable/injectable.dart';
import 'package:islami/core/services/api/models/data/contract/radio_remote_datasource.dart';
import 'package:islami/core/services/api/models/domain/entity/reciter_entity.dart';
import 'package:islami/core/services/api/models/repo/radio_repo.dart';

@Injectable(as: RadioRepo)
class RadioRepoImpl implements RadioRepo{

  final RadioRemoteDataSource remoteDataSource;

  RadioRepoImpl(this.remoteDataSource);

  @override
  Future<List<ReciterEntity>> getReciters(String language) async{
    var response = await remoteDataSource.getReciters();
    return response;
  }

}