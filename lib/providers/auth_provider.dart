import 'package:admin_dashboard/api/cafeapi.dart';
import 'package:admin_dashboard/models/http/auth_response.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/services/local_storage.dart';
import 'package:admin_dashboard/services/navigator_service.dart';
import 'package:admin_dashboard/services/notifications_service.dart';
import 'package:flutter/cupertino.dart';

enum AuthStatus { checking, authenticated, notAuthenticate }

class AuthProvider extends ChangeNotifier {
  String? _token;
  AuthStatus authStatus = AuthStatus.checking;
  Usuario? user;

  AuthProvider() {
    this.isAuthenticated();
  }

  login(String email, String password) {
    final data = {'correo': email, 'password': password};
    CafeApi.post('/auth/login', data).then((json) {
      final authResponse = AuthResponse.fromMap(json);
      this.user = authResponse.usuario;
      authStatus = AuthStatus.authenticated;
      LocalStorage.prefs.setString('token', authResponse.token);
      NavigationService.replaceTo(Flurorouter.dashboardRoute);
      CafeApi.configureDio();
      notifyListeners();
    }).catchError((e) {
      NotificationService.showSnackbarError(
          'Error User / Password, \n por favor verificar');
    });
  }

  register(String email, String password, String name) {
    final data = {'nombre': name, 'correo': email, 'password': password};

    CafeApi.post('/usuarios', data).then((json) {
      final authResponse = AuthResponse.fromMap(json);
      this.user = authResponse.usuario;

      LocalStorage.prefs.setString('token', authResponse.token);
      authStatus = AuthStatus.authenticated;
      NavigationService.replaceTo(Flurorouter.dashboardRoute);
      CafeApi.configureDio();
      notifyListeners();
    }).catchError((e) {
      NotificationService.showSnackbarError(
          'Error User / Password, \n por favor verificar');
    });
  }

  Future<bool> isAuthenticated() async {
    final token = LocalStorage.prefs.getString('token');
    if (token == null) {
      authStatus = AuthStatus.notAuthenticate;
      notifyListeners();
      return false;
    }

    try {
      final resp = await CafeApi.httpGet('/auth');
      final authResponse = AuthResponse.fromMap(resp);
      LocalStorage.prefs.setString('token', authResponse.token);

      this.user = authResponse.usuario;
      notifyListeners();
      authStatus = AuthStatus.authenticated;
      return true;
    } catch (e) {
      authStatus = AuthStatus.notAuthenticate;
      notifyListeners();
      return false;
    }
  }

  logout() {
    LocalStorage.prefs.remove('token');
    authStatus = AuthStatus.notAuthenticate;
    notifyListeners();
  }
}
