// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'application/employee_list_cubit.dart' as _i3;
import 'domain/i_employee_list_repository.dart' as _i4;
import 'infrastructure/repository/employee_list_repository.dart' as _i5;
import 'package:dio/dio.dart' as _i6;
import 'infrastructure/core/injectable_module.dart' as _i7;

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final injectableModule = _$InjectableModule();
  gh.factory<String>(
    () => injectableModule.httpUrl,
    instanceName: 'HttpUrl',
  );
  gh.lazySingleton<_i6.Dio>(
      () => injectableModule.dio(get<String>(instanceName: 'HttpUrl')));
  gh.lazySingleton<_i4.IEmployeeListRepository>(
      () => _i5.EmployeeListRepository(get<_i6.Dio>()));
  gh.factory<_i3.EmployeeListCubit>(
      () => _i3.EmployeeListCubit(get<_i4.IEmployeeListRepository>()));
  return get;
}

class _$InjectableModule extends _i7.InjectableModule {}
