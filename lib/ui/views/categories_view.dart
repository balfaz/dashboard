import 'package:admin_dashboard/datatable/categories_ds.dart';
//import 'package:admin_dashboard/models/http/category.dart';
import 'package:admin_dashboard/providers/categories_provider.dart';
import 'package:admin_dashboard/ui/buttons/custom_icon_button.dart';
import 'package:admin_dashboard/ui/labels/customs_labels.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  _CategoriesViewState createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  int _rowsPage = PaginatedDataTable.defaultRowsPerPage;

  @override
  void initState() {
    super.initState();
    Provider.of<CategoriesProvider>(context, listen: false).getCategories();
  }

  @override
  Widget build(BuildContext context) {
    final categorias = Provider.of<CategoriesProvider>(context).categorias;
    return Container(
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Text(
            'Categories View',
            style: CustomLabels.h1,
          ),
          SizedBox(
            height: 10,
          ),
          PaginatedDataTable(
            columns: [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Categoria')),
              DataColumn(label: Text('Creado Por:')),
              DataColumn(label: Text('Acciones'))
            ],
            source: CategoriesDTS(categorias),
            header: Text(
              'Categories',
              maxLines: 2,
            ),
            onPageChanged: (value) {
              setState(() {
                _rowsPage = value ?? 10;
              });
            },
            rowsPerPage: _rowsPage,
            actions: [
              CustomIconButton(
                  onPressed: () {}, text: 'Crear', icon: Icons.add_outlined)
            ],
          ),
        ],
      ),
    );
  }
}
