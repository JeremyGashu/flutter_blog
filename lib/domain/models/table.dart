import 'package:prepreocessor_starter/domain/base_widget.dart';

class TableModel  extends BaseWidgetModel{
    TableModel({
        this.withHeadings,
        this.color,
        this.size,
        this.content,
    });

    final bool withHeadings;
    final String color;
    final int size;
    final List<List<String>> content;

    factory TableModel.fromJson(Map<String, dynamic> json) => TableModel(
        withHeadings: json["withHeadings"],
        color: json["color"],
        size: json["size"],
        content: List<List<String>>.from(json["content"].map((x) => List<String>.from(x.map((x) => x)))),
    );

    Map<String, dynamic> toJson() => {
        "withHeadings": withHeadings,
        "color": color,
        "size": size,
        "content": List<dynamic>.from(content.map((x) => List<dynamic>.from(x.map((x) => x)))),
    };

  @override
  List<Object> get props => [withHeadings, color, size, content];
}
