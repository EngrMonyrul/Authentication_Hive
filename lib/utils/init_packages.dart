part of '../auth_library.dart';

/// ### Init Packages
/// *__This method initiate all the necessary packages__*
///
/// __Init Packages__
/// * [Hive]
Future<void> initPackages() async {
  /// init flutter hive
  /// note: the "AuthStorage" name is not mandetory
  await Hive.initFlutter("AuthStorage");
  await diReg().then((_) {
    configureDi();
  });
}
