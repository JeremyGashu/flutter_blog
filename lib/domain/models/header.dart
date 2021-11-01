import 'package:prepreocessor_starter/domain/base_widget.dart';

class Header extends BaseWidgetModel {
  Header({
    this.text,
    this.level,
    this.color,
    this.backgroundColor,
    this.roundedBorder,
    this.borderColor,
    this.borderWidth,
  });

  final String text;
  final num level;
  final String color;
  final String backgroundColor;
  final bool roundedBorder;
  final String borderColor;
  final num borderWidth;

  factory Header.fromJson(Map<String, dynamic> json) => Header(
        text: json["text"],
        level: json["level"],
        color: json["color"],
        backgroundColor: json["backgroundColor"],
        roundedBorder: json["roundedBorder"],
        borderColor: json["borderColor"],
        borderWidth: json["borderWidth"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "level": level,
        "color": color,
        "backgroundColor": backgroundColor,
        "roundedBorder": roundedBorder,
        "borderColor": borderColor,
        "borderWidth": borderWidth,
      };

  @override
  List<Object> get props => [
        text,
        level,
        borderColor,
        borderWidth,
        color,
        roundedBorder,
        backgroundColor
      ];
}


