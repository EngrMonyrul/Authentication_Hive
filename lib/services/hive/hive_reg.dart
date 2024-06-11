part of '../../../auth_library.dart';

/// ### Registering adapter
/// *__This method register adapters__*
///
/// __Registered Adapters__
/// * [SignupAdapter]
/// * [SigninAdapter]
Future<void> hiveReg() async {
  Hive.registerAdapter(SignupAdapter());
  Hive.registerAdapter(SigninAdapter());
}
