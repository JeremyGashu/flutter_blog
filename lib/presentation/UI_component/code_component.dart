import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/domain/models/code.dart';


class CodeWidget extends StatelessWidget {
  final CodeModel code;

  const CodeWidget({Key key, this.code}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildCode(code),
    );
  }
}


Widget _buildCode(CodeModel code) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.grey.withOpacity(0.4), width: 0.7),
      color: code.backgroundColor ?? kDefaultCodeColor,
    ),
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
    child: Text(code.code, style: TextStyle(color: code.color ?? kDefaultTextColor),),
  );
}