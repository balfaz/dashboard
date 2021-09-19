import 'package:admin_dashboard/api/cafeapi.dart';
import 'package:admin_dashboard/models/http/categories_response.dart';
import 'package:admin_dashboard/models/http/category.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CategoriesProvider extends ChangeNotifier {
  List<Categoria> categorias = [];

  getCategories() async {
    final resp = await CafeApi.httpGet('/categorias');
    final categoriesResp = CategoriesResponse.fromMap(resp);
    this.categorias = [...categoriesResp.categorias];
    print(this.categorias);
    notifyListeners();
  }
}
