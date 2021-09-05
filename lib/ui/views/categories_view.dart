import 'package:admin_dashboard/datatable/categories_ds.dart';
import 'package:admin_dashboard/ui/buttons/custom_icon_button.dart';
import 'package:admin_dashboard/ui/labels/customs_labels.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            source: CategoriesDTS(),
            header: Text('Categories'),
            actions: [
              CustomIconButton(
                  onPressed: () {}, text: 'Crear', icon: Icons.add_outlined)
            ],
            rowsPerPage: 20,
          ),
        ],
      ),
    );
  }
}
