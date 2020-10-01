// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import 'services/third_paryt_services_module.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final thirdPartyServicesModelue = _$ThirdPartyServicesModelue();
  gh.lazySingleton<DialogService>(
      () => thirdPartyServicesModelue.dialogService);
  gh.lazySingleton<NavigationService>(
      () => thirdPartyServicesModelue.navigationService);
  return get;
}

class _$ThirdPartyServicesModelue extends ThirdPartyServicesModelue {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
}
