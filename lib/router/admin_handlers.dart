import 'package:admin_dashboard/ui/views/login_views.dart';
import 'package:admin_dashboard/ui/views/register_views.dart';
import 'package:fluro/fluro.dart';

class AdminHandlers {
  static Handler login = Handler(handlerFunc: (context, params) {
    return LoginView();
  });
  static Handler register = Handler(handlerFunc: (context, params) {
    return RegisterView();
  });
}
