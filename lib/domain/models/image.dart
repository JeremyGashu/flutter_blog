import 'package:prepreocessor_starter/domain/base_widget.dart';

class ImageModel extends BaseWidgetModel {
  ImageModel({
    this.file,
    this.caption,
    this.withBorder,
    this.stretched,
    this.withBackground,
    this.width,
    this.height,
  });

  final FileClass file;
  final String caption;
  final bool withBorder;
  final bool stretched;
  final bool withBackground;
  final num width;
  final num height;

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        file: FileClass.fromJson(json["file"]),
        caption: json["caption"],
        withBorder: json["withBorder"],
        stretched: json["stretched"],
        withBackground: json["withBackground"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "file": file.toJson(),
        "caption": caption,
        "withBorder": withBorder,
        "stretched": stretched,
        "withBackground": withBackground,
        "width": width,
        "height": height,
      };

  @override
  List<Object> get props => [file, caption, withBorder, stretched, withBackground, width, height];
}

class FileClass {
  FileClass({
    this.url,
  });

  String url;

  factory FileClass.fromJson(Map<String, dynamic> json) => FileClass(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}
