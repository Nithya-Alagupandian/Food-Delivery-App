import 'package:flutter/material.dart';
import 'package:swiggy/widgets/explore_list_item.dart';

import '../models/category_model.dart';

class ExploreListView extends StatelessWidget {
  List<Category> itemList = <Category>[];
  ExploreListView(this.itemList, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(left: 8),
        //height: 165,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: itemList.length,
            itemBuilder: (context, index) {
              return ExploreListItemView(itemList, index);
            }),
      ),
    );
  }
}
