import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_studios/app/app_module.dart';

import 'app/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  //await loadEnv();
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

// Future<void> loadEnv() async {
//   const isProduction = bool.fromEnvironment('dart.vm.product');
//   await dotenv.load(fileName: isProduction ? '.env' : '.env_dev');
// }

