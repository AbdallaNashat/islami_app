// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../radio_ritrofit_client.dart' as _i338;
import '../data/contract/radio_remote_datasource.dart' as _i720;
import '../data/impl/radio_remote_impl.dart' as _i673;
import '../data/repo/radio_repo_impl.dart' as _i405;
import '../repo/radio_repo.dart' as _i557;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i338.RadioRetrofitClient>(
            () => _i338.RadioRetrofitClient(gh<_i361.Dio>()));
    gh.factory<_i720.RadioRemoteDataSource>(
            () => _i673.RadioRemoteImpl(gh<_i338.RadioRetrofitClient>()));
    gh.factory<_i557.RadioRepo>(
            () => _i405.RadioRepoImpl(gh<_i720.RadioRemoteDataSource>()));
    return this;
  }
}
