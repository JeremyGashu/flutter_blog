import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/color_coverter.dart';
import 'package:prepreocessor_starter/domain/models/delimiter.dart';

class DelimiterWidget extends StatelessWidget {
  final Delimiter delimiter;

  const DelimiterWidget({Key key, this.delimiter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDelimiter(
            delimiter: delimiter.delimiterCharacter,
            count: delimiter.count,
            color: delimiter.color),
      ),
    );
  }
}

List<Widget> _buildDelimiter({
  int count,
  String delimiter,
  String color,
  double size,
}) {
  count ??= 3;
  delimiter ??= "*";
  color ??= '444444';
  size ??= 32;
  return List.generate(count, (index) {
    return Text(
      delimiter,
      style: TextStyle(color:  colorConvert(color), fontSize: size),
    );
  });
}
