import 'package:auto_route/auto_route.dart';
import 'package:whereismycar/app/utils/router.gr.dart';

export '../utils/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
      ];
}
