import 'package:prepreocessor_starter/domain/base_widget.dart';

class QuoteModel extends BaseWidgetModel {
    QuoteModel({
        this.text,
        this.caption,
        this.alignment,
        this.color,
        this.backgroundColor,
        this.size
    });

    final String text;
    final String caption;
    final String alignment;
    final String color;
    final String backgroundColor;
    final num size;

    factory QuoteModel.fromJson(Map<String, dynamic> json) => QuoteModel(
        text: json["text"],
        caption: json["caption"],
        alignment: json["alignment"],
        color: json["color"],
        backgroundColor: json["backgroundColor"],
        size : json['size'],
    );

    Map<String, dynamic> toJson() => {
        "text": text,
        "caption": caption,
        "alignment": alignment,
        "color": color,
        "backgroundColor": backgroundColor,
        "size" : size,
    };

  @override
  List<Object> get props => [text, caption, alignment, color, backgroundColor, size];
}
