part of '../../../auth_library.dart';

Future<void> diReg() async {
  getIt.registerLazySingleton<HiveServices>(() => _HiveServicesImpl());
}
