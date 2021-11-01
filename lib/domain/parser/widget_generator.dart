import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/domain/models/code.dart';
import 'package:prepreocessor_starter/domain/models/delimiter.dart';
import 'package:prepreocessor_starter/domain/models/header.dart';
import 'package:prepreocessor_starter/domain/models/image.dart';
import 'package:prepreocessor_starter/domain/models/link.dart';
import 'package:prepreocessor_starter/domain/models/list.dart';
import 'package:prepreocessor_starter/domain/models/paragraph.dart';
import 'package:prepreocessor_starter/core/color_coverter.dart';
import 'package:prepreocessor_starter/domain/models/quote.dart';
import 'package:prepreocessor_starter/domain/models/raw_html.dart';
import 'package:prepreocessor_starter/domain/models/table.dart';
import 'package:prepreocessor_starter/presentation/UI_component/code_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/delimiter_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/header_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/image_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/link_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/list_widget.dart';
import 'package:prepreocessor_starter/presentation/UI_component/paragraph_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/quote_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/raw_html_component.dart';
import 'package:prepreocessor_starter/presentation/UI_component/table_component.dart';

import '../base_widget.dart';

class WidgetGenerator {
  static Widget generateWidgetFrom(BaseWidgetModel data) {
    if (data is Header) {
      return HeaderWidget(header : data);
    } else if (data is Paragraph) {
      return ParagraphWidget(paragraph: data,);
    }
    else if(data is Delimiter) {
      return DelimiterWidget(delimiter: data,);
    }
    else if(data is ImageModel) {
      return ImageWidget(image: data,);
    }
    else if(data is CodeModel) {
      return CodeWidget(code: data,);
    }
    else if(data is QuoteModel) {
      return QuoteWidget(quote: data,);
    }
    else if(data is LinkModel) {
      return LinkWidget(link: data,);
    }
    else if(data is RawHtmlModel) {
      return RawHTMLWidget(html: data,);
    }
    else if(data is ListModel) {
      return ListWidget(list: data,);
    }
    else if(data is TableModel) {
      return TableWidget(table: data,);
    }
    return Container();
  }
}

TextStyle getParagraphTextStyle(Paragraph paragraph) {
  Color color = paragraph.color != null
      ? colorConvert(paragraph.color)
      : Colors.grey[800];
  double size = paragraph.size?? 16;
  return TextStyle(
      wordSpacing: 1.005, letterSpacing: 1.005, color: color, fontSize: size);
}


