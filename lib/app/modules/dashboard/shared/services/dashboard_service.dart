import 'package:marvel_studios/app/modules/dashboard/shared/models/marvel.dart';
import 'package:marvel_studios/app/modules/dashboard/repository/dashboard_repository.dart';

class DashboardService {
  DashoardRepository _dashboardRepository = DashoardRepository();

  Future<List<Marvel>> getMarvelProductsService() async {
    try {
      return await _dashboardRepository.getMarvelProducts();
    } catch (error) {
      rethrow;
    }
  }
}
