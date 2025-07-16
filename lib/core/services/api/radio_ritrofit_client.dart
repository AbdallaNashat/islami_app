import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:islami/core/services/api/models/reciters_response_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'radio_ritrofit_client.g.dart';

@singleton
@RestApi(baseUrl: "https://www.mp3quran.net/api/v3/")
abstract class RadioRetrofitClient {
  @factoryMethod
  factory RadioRetrofitClient(Dio dio) = _RadioRetrofitClient;
  @GET("reciters")
  Future<RecitersResponseDto> getReciters(
      @Query("language") String language,
      );
}
