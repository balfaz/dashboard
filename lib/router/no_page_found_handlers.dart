import 'package:admin_dashboard/ui/views/not_found_page.dart';
import 'package:fluro/fluro.dart';

class NoPageFoundHandlers {
  static Handler noPageFound = Handler(handlerFunc: (context, params) {
    return NoFoundPage();
  });
}
