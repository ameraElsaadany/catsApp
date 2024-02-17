import 'package:flutter/material.dart';
import '../Cat.dart';
 // Assuming the Cat class is in 'cat.dart'
import 'catDetail.dart';
// Assuming the CatDetails widget is in 'cat_details.dart'

class CatCard extends StatelessWidget {
  final Cat cat;

  const CatCard({required this.cat, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => CatDetails(cat: cat)),
        );
      },
      child: Card(
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                cat.imageLink,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
            Text(
              cat.name,
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}