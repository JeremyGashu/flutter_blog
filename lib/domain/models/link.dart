import 'package:prepreocessor_starter/domain/base_widget.dart';

class LinkModel extends BaseWidgetModel{
    LinkModel({
        this.link,
        this.meta,
        this.color,
        this.backgroundColor,
        this.titleSize,
        this.linkSize,
    });

    final String link;
    final Meta meta;
    final String color;
    final String backgroundColor;
    final int titleSize;
    final int linkSize;

    factory LinkModel.fromJson(Map<String, dynamic> json) => LinkModel(
        link: json["link"],
        meta: Meta.fromJson(json["meta"]),
        color: json["color"],
        backgroundColor: json["backgroundColor"],
        titleSize: json["titleSize"],
        linkSize: json["linkSize"],
    );

    Map<String, dynamic> toJson() => {
        "link": link,
        "meta": meta.toJson(),
        "color": color,
        "backgroundColor": backgroundColor,
        "titleSize": titleSize,
        "linkSize": linkSize,
    };

  @override
  List<Object> get props => [link, meta, color, backgroundColor, titleSize, linkSize];
}

class Meta {
    Meta({
        this.url,
        this.domain,
        this.title,
        this.description,
        this.image,
    });

    String url;
    String domain;
    String title;
    String description;
    Image image;

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        url: json["url"],
        domain: json["domain"],
        title: json["title"],
        description: json["description"],
        image: Image.fromJson(json["image"]),
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "domain": domain,
        "title": title,
        "description": description,
        "image": image.toJson(),
    };
}

class Image {
    Image({
        this.url,
    });

    String url;

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
    };
}
