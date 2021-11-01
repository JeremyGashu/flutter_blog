import 'package:prepreocessor_starter/domain/base_widget.dart';

class Paragraph extends BaseWidgetModel {
  Paragraph({
    this.text,
    this.color,
    this.backgroundColor,
    this.roundedBorder,
    this.borderColor,
    this.borderWidth,
    this.size,
  });

  final String text;
  final String color;
  final String backgroundColor;
  final bool roundedBorder;
  final String borderColor;
  final int borderWidth;
  final num size;

  factory Paragraph.fromJson(Map<String, dynamic> json) => Paragraph(
        text: json["text"],
        color: json["color"],
        backgroundColor: json["backgroundColor"],
        roundedBorder: json["roundedBorder"],
        borderColor: json["borderColor"],
        borderWidth: json["borderWidth"],
        size: json["size"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "color": color,
        "backgroundColor": backgroundColor,
        "roundedBorder": roundedBorder,
        "borderColor": borderColor,
        "borderWidth": borderWidth,
        "size": size,
      };

  @override
  List<Object> get props => [
        text,
        borderColor,
        borderWidth,
        color,
        roundedBorder,
        backgroundColor,
        size
      ];
}
