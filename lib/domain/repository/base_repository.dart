import 'package:flutter/widgets.dart';
import 'package:prepreocessor_starter/data/datasource/datasource.dart';

abstract class BaseRepository {
  final DataSource dataSource;

  BaseRepository(this.dataSource);

  Future<List<Widget>> getBlocks();
}
