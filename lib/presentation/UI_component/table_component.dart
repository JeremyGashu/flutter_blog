import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/domain/models/table.dart';

class TableWidget extends StatelessWidget {
  final TableModel table;

  const TableWidget({Key key, this.table}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildTable(table);
  }
}

Widget _buildTable(TableModel table) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: DataTable(
      columns: _buildHeaders(table),
      rows: _buildRows(table),
    ),
  );
}

List<DataColumn> _buildHeaders(TableModel tableModel) {
  return tableModel.withHeadings
      ? tableModel.content[0].map((heading) {
          return DataColumn(
            label: Text(
              heading,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: tableModel.color ?? Colors.black),
            ),
          );
        }).toList()
      : tableModel.content
          .map((e) => DataColumn(
                label: Text(
                  '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: tableModel.color ?? Colors.black),
                ),
              ))
          .toList();
}

List<DataRow> _buildRows(TableModel table) {
  List<DataRow> rows = [];
  table.content.sublist(table.content.length > 1 ? 1 : 0).forEach((content) {
    List<DataCell> cells = content
        .map(
          (e) => DataCell(Text(
            e,
            style: TextStyle(
                color: table.color ?? kDefaultTextColor,
                fontSize: table.size ?? 13),
          )),
        )
        .toList();
    rows.add(DataRow(cells: cells));
  });
  return rows;
}
