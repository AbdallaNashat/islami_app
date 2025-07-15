import 'package:islami/core/services/api/models/domain/entity/reciter_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reciters_response_dto.g.dart';

@JsonSerializable()
class RecitersResponseDto {
  @JsonKey(name: "reciters")
  final List<Reciters>? reciters;

  RecitersResponseDto({
    this.reciters,
  });

  factory RecitersResponseDto.fromJson(Map<String, dynamic> json) {
    return _$RecitersResponseDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RecitersResponseDtoToJson(this);
  }
}

@JsonSerializable()
class Reciters {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "letter")
  final String? letter;
  @JsonKey(name: "date")
  final String? date;
  @JsonKey(name: "moshaf")
  final List<Moshaf>? moshaf;

  Reciters({
    this.id,
    this.name,
    this.letter,
    this.date,
    this.moshaf,
  });

  factory Reciters.fromJson(Map<String, dynamic> json) {
    return _$RecitersFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RecitersToJson(this);
  }

  ReciterEntity toDomain() {
    List<String> moshafList = moshaf?.first.surahList?.split(',') ?? [];
    for (int i = 0; i < moshafList.length; i++) {
      if (moshafList[i].length == 1) {
        moshafList[i] = "${moshaf?.first.server ?? ""} 00${moshafList[i]}.mp3";
      } else if (moshafList[i].length == 2) {
        moshafList[i] = "${moshaf?.first.server ?? ""} 0${moshafList[i]}.mp3";
      } else {
        moshafList[i] = "${moshaf?.first.server ?? ""} ${moshafList[i]}.mp3";
      }
    }
    return ReciterEntity(
      id: id,
      name: name,
    );
  }
}

@JsonSerializable()
class Moshaf {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "server")
  final String? server;
  @JsonKey(name: "surah_total")
  final int? surahTotal;
  @JsonKey(name: "moshaf_type")
  final int? moshafType;
  @JsonKey(name: "surah_list")
  final String? surahList;

  Moshaf({
    this.id,
    this.name,
    this.server,
    this.surahTotal,
    this.moshafType,
    this.surahList,
  });

  factory Moshaf.fromJson(Map<String, dynamic> json) {
    return _$MoshafFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MoshafToJson(this);
  }
}
