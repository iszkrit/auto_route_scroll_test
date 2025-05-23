import 'package:auto_route/auto_route.dart';
import 'package:scroll_test/pages/home_page.dart';
import 'package:scroll_test/pages/settings_page.dart';
import 'package:scroll_test/pages/main_scaffold.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: MainScaffoldRoute.page,
      initial: true,
      children: [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: SettingsRoute.page),
      ],
    ),
  ];
}
