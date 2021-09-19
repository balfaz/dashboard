import 'package:admin_dashboard/models/http/category.dart';
import 'package:flutter/material.dart';

class CategoriesDTS extends DataTableSource {
  final List<Categoria> categorias;

  CategoriesDTS(this.categorias);

  @override
  DataRow? getRow(int index) {
    final categoria = this.categorias[index];
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text(categoria.id)),
      DataCell(Text('Cell #$index')),
      DataCell(Text('Cell #$index')),
      DataCell(Text('Cell #$index'))
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => true;

  @override
  // TODO: implement rowCount
  int get rowCount => categorias.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
