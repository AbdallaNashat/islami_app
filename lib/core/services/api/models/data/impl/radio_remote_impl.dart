import 'package:injectable/injectable.dart';
import 'package:islami/core/services/api/models/data/contract/radio_remote_datasource.dart';
import 'package:islami/core/services/api/models/domain/entity/reciter_entity.dart';
import 'package:islami/core/services/api/radio_ritrofit_client.dart';

@Injectable(as: RadioRemoteDataSource)
class RadioRemoteImpl implements RadioRemoteDataSource{

  final RadioRetrofitClient radioRitrofitClient;

  RadioRemoteImpl(this.radioRitrofitClient);

  @override
  Future<List<ReciterEntity>> getReciters() async{
    try{
      var response = await radioRitrofitClient.getReciters("ar");
      return response.reciters?.map((e) => e.toDomain()).toList() ?? [];
    }catch(e){
      throw Exception(e.toString());
    }
  }

}