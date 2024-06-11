import 'package:authentication/auth_library.dart';
import 'package:injectable/injectable.dart';
import '../../main.dart';
import 'di_init.config.dart';

@InjectableInit(
  preferRelativeImports: true,
  initializerName: "init",
  asExtension: true,
)
void configureDi() => getIt.init();
