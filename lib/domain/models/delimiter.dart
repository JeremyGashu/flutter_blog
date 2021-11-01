import 'package:prepreocessor_starter/domain/base_widget.dart';

class Delimiter extends BaseWidgetModel{
    Delimiter({
        this.delimiterCharacter,
        this.count,
        this.color,
        this.backgroundColor,
        this.size
    });

    final String delimiterCharacter;
    final int count;
    final String color;
    final String backgroundColor;
    final num size;

    factory Delimiter.fromJson(Map<String, dynamic> json) => Delimiter(
        delimiterCharacter: json["delimiterCharacter"],
        count: json["count"],
        color: json["color"],
        backgroundColor: json["backgroundColor"],
        size: json["size"],
    );

    Map<String, dynamic> toJson() => {
        "delimiterCharacter": delimiterCharacter,
        "count": count,
        "color": color,
        "backgroundColor": backgroundColor,
        'size': size, 
    };

  @override
  List<Object> get props => [delimiterCharacter, count, color, backgroundColor];
}
