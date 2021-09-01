import 'package:deli_meals/category_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DeliMeal"),
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((category) => CategoryItem(
                  id: category.id,
                  title: category.title,
                  color: category.color,
                ))
            .toList(),
      ),
    );
  }
}
