import 'package:flutter/material.dart';

Container buildStatusButton({String text, Icon icon, double size = 12}) {
  return Container(
    width: 65,
    height: 30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.grey.withOpacity(0.1),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon ??
            Icon(
              Icons.favorite,
              color: Colors.black,
              size: 12,
            ),
        SizedBox(
          width: 4,
        ),
        Text(
          text ?? '3.8K',
          style: TextStyle(color: Colors.black, fontSize: size),
        ),
      ],
    ),
  );
}
