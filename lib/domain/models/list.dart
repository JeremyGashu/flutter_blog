import 'package:prepreocessor_starter/domain/base_widget.dart';

class ListModel extends BaseWidgetModel {
  ListModel({
    this.style,
    this.items,
    this.color,
    this.size,
  });

  final String style;
  final List<String> items;
  final String color;
  final num size;

  factory ListModel.fromJson(Map<String, dynamic> json) => ListModel(
        style: json["style"],
        items: List<String>.from(json["items"].map((x) => x)),
        color: json["color"],
        size: json['size']
      );

  Map<String, dynamic> toJson() => {
        "style": style,
        "items": List<dynamic>.from(items.map((x) => x)),
        "color": color,
        'size' : size,
      };

  @override
  List<Object> get props => [style, items, color, size];
}
