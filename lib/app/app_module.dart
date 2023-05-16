import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_studios/app/core/components/warnings/warning_page.dart';
import 'package:marvel_studios/app/modules/dashboard/pages/dashboard_controller.dart';
import 'package:marvel_studios/app/modules/dashboard/pages/dashboard_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => DashboardController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, args) => DashboardPage()),
        ChildRoute('/error', child: (_, args) => WarningPage()),
      ];
}
