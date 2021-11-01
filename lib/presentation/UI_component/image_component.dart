import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/domain/models/image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageWidget extends StatelessWidget {
  final ImageModel image;

  const ImageWidget({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _buildImage(image: image);
  }
}

Widget _buildImage({ImageModel image}) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.grey.withOpacity(0.1)),
    ),
    child: Column(
      children: [
        Container(
          width: image.width ?? double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: CachedNetworkImage(
              imageUrl: image.file.url,
              placeholder: (context, url) => Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Center(child: Icon(Icons.error)),
              fit: BoxFit.cover,
            ),
          ),
        ),

        SizedBox(height: 10,),

        image.caption != null ? Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.2), width: 1,),
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          width: double.infinity,
          child: Text(image.caption, style: TextStyle(color: kDefaultTextColor),),
        ) : Container(),
      ],
    ),
  );
}
