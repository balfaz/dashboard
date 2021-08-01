import 'package:admin_dashboard/router/admin_handlers.dart';
import 'package:admin_dashboard/router/no_page_found_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  static String rootRoute = '/';

  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';
  static String dashboardRoute = '/dashboard';

  static void configureRoutes() {
    router.define(rootRoute, handler: AdminHandlers.login);
    router.define(loginRoute, handler: AdminHandlers.login);
    router.define(registerRoute, handler: AdminHandlers.login);
    //ToDo: Da aggiungere route
    //router.define(dashboardRoute, handler: dashboardHandler);
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}
