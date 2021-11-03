import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/domain/models/link.dart';

class LinkWidget extends StatelessWidget {
  final LinkModel link;

  const LinkWidget({Key key, this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: _buildLink(link),
    );
  }
}

Widget _buildLink(LinkModel link) {
  var kDefaultTextColor;
  return InkWell(
    borderRadius: BorderRadius.circular(5),
    onTap: () {},
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey.withOpacity(0.4), width: 0.7),
      ),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                link.meta.title ?? 'Link not found! ',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: link.titleSize ?? 20,
                    fontWeight: FontWeight.w600,
                    color: link.color ?? kDefaultTextColor),
              ),
              Icon(Icons.link),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            link.link,
            style: TextStyle(
                fontSize: link.titleSize ?? 15,
                fontStyle: FontStyle.italic,
                color: link.color ?? Colors.grey.withOpacity(0.8)),
          ),
        ],
      ),
    ),
  );
}
