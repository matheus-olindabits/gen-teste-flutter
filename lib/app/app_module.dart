import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        //Bind.lazySingleton((i) => AuthStore()),
      ];

  @override
  List<ModularRoute> get routes => [
        //ChildRoute(Modular.initialRoute, child: (_, args) => const MainPage()),
      ];
}
