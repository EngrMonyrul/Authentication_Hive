library auth;

import 'package:authentication/models/signin.dart';
import 'package:authentication/models/signup.dart';
import 'package:authentication/services/di/di_init.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';

import 'main.dart';

export 'models/signup.dart';
export 'models/signin.dart';

part 'utils/init_packages.dart';

part 'services/di/di_reg.dart';

part 'services/hive/hive_reg.dart';

part 'services/hive/hive_services.dart';

part 'services/hive/hive_services_impl.dart';