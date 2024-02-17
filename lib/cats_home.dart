import 'package:first_app/widgets/catCard.dart';
import 'package:flutter/material.dart';
import 'package:first_app/Cat.dart'; // Import the Cat class

import 'cata_data.dart'; // Import the CatCard widget

class CatsHomeScreen extends StatelessWidget {
  const CatsHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cats"),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: allCats.length,
        itemBuilder: (context, index) {
          final cat = Cat.fromJson(allCats[index]); // Convert Map to Cat object
          return CatCard(cat: cat); // Pass Cat object to CatCard
        },
      ),
    );
  }
}
