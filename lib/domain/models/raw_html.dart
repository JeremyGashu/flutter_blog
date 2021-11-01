import 'package:prepreocessor_starter/domain/base_widget.dart';

class RawHtmlModel extends BaseWidgetModel{
    RawHtmlModel({
        this.html,
        this.color,
        this.backgroundColor,
        this.size,
    });

    final String html;
    final String color;
    final String backgroundColor;
    final String size;

    factory RawHtmlModel.fromJson(Map<String, dynamic> json) => RawHtmlModel(
        html: json["html"],
        color: json["color"],
        backgroundColor: json["backgroundColor"],
        size: json["size"],
    );

    Map<String, dynamic> toJson() => {
        "html": html,
        "color": color,
        "backgroundColor": backgroundColor,
        "size": size,
    };

  @override
  List<Object> get props => [html, color, backgroundColor, size];
}
