import 'package:flutter/material.dart';
import 'package:prepreocessor_starter/core/colors.dart';
import 'package:prepreocessor_starter/domain/models/list.dart';

class ListWidget extends StatelessWidget {
  final ListModel list;

  const ListWidget({Key key, this.list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildList(list),
    );
  }
}

Widget _buildList(ListModel list) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
    child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: list.items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 3, bottom: 3),
            child: Row(
              children: [
                list.style == 'unordered'
                    ? _leading()
                    : Text(
                        '${index + 1}, ',
                        softWrap: true,
                        style: TextStyle(
                            color: list.color ?? kDefaultTextColor,
                            fontSize: list.size ?? 12),
                      ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Text(
                    list.items[index],
                    style: TextStyle(
                        color: list.color ?? kDefaultTextColor,
                        fontSize: list.size ?? 12),
                  ),
                ),
              ],
            ),
          );
        }),
  );
}

Container _leading() {
  return Container(
    width: 4,
    height: 4,
    decoration: BoxDecoration(
        color: Colors.grey, borderRadius: BorderRadius.circular(2)),
  );
}
