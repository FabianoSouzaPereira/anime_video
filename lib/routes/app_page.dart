import 'package:anime_video/pages/home/home_page.dart';
import 'package:anime_video/pages/root.dart';
import 'package:anime_video/routes/app_routes.dart';

class AppPages {
  static final routes = {
    AppRoutes.ROOT: (_) => Root(),
    AppRoutes.HOME: (_) => const HomePage(
          title: 'Home',
        ),
    // AppRoutes.SPLASH: (_) => SplashPage(),
    // AppRoutes.APP_ACCESS: (_) => AppAccess(),
    // AppRoutes.SETTINGS_PAGE: (_) => SettingsPage(),
  };
}
