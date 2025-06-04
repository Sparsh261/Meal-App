import 'package:flutter/material.dart';
import 'package:mymealapp/Data/DummyData.dart';
import 'package:mymealapp/Models/Category.dart';
import 'package:mymealapp/Widgets/CategoryGridItem.dart';

class  CategoryScreen extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick category",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: const Color.fromARGB(255, 143, 152, 167),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: [
            for(Category category in availableCategories)
              CategoryGridItem(category: category),
          ],
        ),
      ),
    );
  }
}