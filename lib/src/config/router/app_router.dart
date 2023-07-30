import 'package:auto_route/auto_route.dart';
import '../../presentation/views/home/homepage.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.adaptive(); //.cupertino, .adaptive ..etc

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: HomeRoute.page, initial: true, path: 'home'),
    // AutoRoute(page: MyHomePage, initial: true),
  ];
}
