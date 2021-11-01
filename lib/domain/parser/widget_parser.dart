import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/domain/models/code.dart';
import 'package:prepreocessor_starter/domain/models/delimiter.dart';
import 'package:prepreocessor_starter/domain/models/header.dart';
import 'package:prepreocessor_starter/domain/models/image.dart';
import 'package:prepreocessor_starter/domain/models/link.dart';
import 'package:prepreocessor_starter/domain/models/list.dart';
import 'package:prepreocessor_starter/domain/models/paragraph.dart';
import 'package:prepreocessor_starter/domain/models/quote.dart';
import 'package:prepreocessor_starter/domain/models/raw_html.dart';
import 'package:prepreocessor_starter/domain/models/table.dart';
import 'package:prepreocessor_starter/domain/parser/widget_generator.dart';
import 'package:prepreocessor_starter/domain/types/widget_types.dart';

class WidgetParser {
  static Widget parse(
      {@required String type, @required Map<String, dynamic> json}) {
    switch (type) {
      case WidgetType.header:
        return WidgetGenerator.generateWidgetFrom(Header.fromJson(json));
      case WidgetType.paragraph:
        return WidgetGenerator.generateWidgetFrom(Paragraph.fromJson(json));
      case WidgetType.delimter:
        return WidgetGenerator.generateWidgetFrom(Delimiter.fromJson(json));
      case WidgetType.image:
        return WidgetGenerator.generateWidgetFrom(ImageModel.fromJson(json));
      case WidgetType.code:
        return WidgetGenerator.generateWidgetFrom(CodeModel.fromJson(json));
      case WidgetType.quote:
        return WidgetGenerator.generateWidgetFrom(QuoteModel.fromJson(json));
      case WidgetType.linkTool:
        return WidgetGenerator.generateWidgetFrom(LinkModel.fromJson(json));
      case WidgetType.rawTool:
        return WidgetGenerator.generateWidgetFrom(RawHtmlModel.fromJson(json));
      case WidgetType.list:
        return WidgetGenerator.generateWidgetFrom(ListModel.fromJson(json));

      case WidgetType.table:
        return WidgetGenerator.generateWidgetFrom(TableModel.fromJson(json));

      default:
        return Container();
    }
  }
}
