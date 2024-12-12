import 'package:flutter/material.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vamos Cozinhar?'),
        backgroundColor: Colors.pink[400],
        foregroundColor: Colors.white,
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          // The ratio of the cross-axis to the main-axis extent of each child.
          childAspectRatio: 3 / 2,
          // The number of logical pixels between each child along the cross axis.
          crossAxisSpacing: 20,
          // The number of logical pixels between each child along the main axis.
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((cat) {
          return CategoryItem(cat);
        }).toList(),
      ),
    );
  }
}
