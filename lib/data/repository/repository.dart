import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:prepreocessor_starter/core/sanitize_string.dart';
import 'package:prepreocessor_starter/data/datasource/datasource.dart';
import 'package:http/http.dart' as http;
import 'package:prepreocessor_starter/domain/parser/widget_parser.dart';
import 'package:prepreocessor_starter/domain/repository/base_repository.dart';

class CoreRepository implements BaseRepository {
  final DataSource dataSource;

  CoreRepository(this.dataSource);

  @override
  Future<List<Widget>> getBlocks() async {
    http.Response response = await dataSource.getBlocks();
    
    String sanitizedString = sanitizeString(value: response.body);

    var decoded = jsonDecode(sanitizedString)['blocks'] as List;
    print(sanitizedString);

    List<Widget> widgets = decoded.map((block) {
      print('type => $block["type"]');
      return WidgetParser.parse(type: block['type'], json: block['data']);
    }).toList();
    return widgets;
  }
}
