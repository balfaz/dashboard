import 'package:flutter/material.dart';

class CategoriesDTS extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text('Cell #$index')),
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
  int get rowCount => 1000;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}