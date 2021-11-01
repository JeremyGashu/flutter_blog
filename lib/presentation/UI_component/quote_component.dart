import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/domain/models/quote.dart';

class QuoteWidget extends StatelessWidget {
  final QuoteModel quote;

  const QuoteWidget({Key key, this.quote}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _buildQuote(quote);
  }
}

Widget _buildQuote(QuoteModel quote) {
  String alignment = quote.alignment != null ? quote.alignment : 'left';
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.withOpacity(0.4), width: 0.7),
        ),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Text(
          quote.text,
          textAlign: alignment == 'center'
              ? TextAlign.center
              : alignment == 'left'
                  ? TextAlign.left
                  : TextAlign.right,
          style: TextStyle(
            fontSize: quote.size ?? 18,
              fontStyle: FontStyle.italic,
              color: quote.color ?? kDefaultTextColor),
        ),
      ),
      quote.caption != null
          ? Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.2), width: 0.7),
              ),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
              child: Text(
                '-${quote.caption}',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: quote.size ?? 18,
                    fontStyle: FontStyle.italic,
                    color: quote.color ?? kDefaultTextColor),
              ),
            )
          : Container(),
    ],
  );
}
