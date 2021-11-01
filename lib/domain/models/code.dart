import 'package:prepreocessor_starter/domain/base_widget.dart';

class CodeModel extends BaseWidgetModel{
    CodeModel({
        this.code,
        this.backgroundColor,
        this.color,
    });

    final String code;
    final String backgroundColor;
    final String color;

    factory CodeModel.fromJson(Map<String, dynamic> json) => CodeModel(
        code: json["code"],
        backgroundColor: json["backgroundColor"],
        color: json["color"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "backgroundColor": backgroundColor,
        "color": color,
    };

  @override
  List<Object> get props => [code, backgroundColor, color];
}
