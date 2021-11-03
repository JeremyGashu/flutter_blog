import 'package:prepreocessor_starter/domain/base_widget.dart';

class VideoModel extends BaseWidgetModel {
  VideoModel({
    this.from,
    this.url,
  });

  final String url;
  final String from;

  factory VideoModel.fromJson(Map<String, dynamic> json) => VideoModel(
        url: json["url"],
        from: json["from"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "from": from,
      };

  @override
  List<Object> get props => [url, from];
}
