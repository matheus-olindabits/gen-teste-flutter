import 'package:marvel_studios/app/modules/dashboard/shared/services/dashboard_service.dart';
import 'package:marvel_studios/app/modules/dashboard/shared/models/marvel.dart';
import 'package:mobx/mobx.dart';
part 'dashboard_controller.g.dart';

class DashboardController = DashboardControllerBase with _$DashboardController;

abstract class DashboardControllerBase with Store {
  DashboardControllerBase();

  DashboardService _dashboardService = DashboardService();

  @observable
  List<Marvel> marvelProducts = [];

  @action
  Future<void> listMarvelProducts() async {
    try {
      marvelProducts = await _dashboardService.getMarvelProductsService();
    } catch (error) {
      //SnackBarErro.snackbarErro(error);
    }
  }
}
