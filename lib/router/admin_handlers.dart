import 'package:admin_dashboard/providers/auth_provider.dart';
//import 'package:admin_dashboard/router/router.dart';
//import 'package:admin_dashboard/services/navigator_service.dart';
import 'package:admin_dashboard/ui/views/dashboard_view.dart';
import 'package:admin_dashboard/ui/views/login_view.dart';
import 'package:admin_dashboard/ui/views/register_views.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

class AdminHandlers {
  static Handler login = Handler(handlerFunc: (context, params) {
    final authProvider = Provider.of<AuthProvider>(context!);
    if (authProvider.authStatus == AuthStatus.notAuthenticate) {
      return LoginView();
    } else
      return DashboardView();
  });
  static Handler register = Handler(handlerFunc: (context, params) {
    final authProvider = Provider.of<AuthProvider>(context!);
    if (authProvider.authStatus == AuthStatus.notAuthenticate)
      return RegisterView();
    else
      return DashboardView();
  });
}
