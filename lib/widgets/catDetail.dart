import 'package:flutter/material.dart';
import '../Cat.dart';
 // Assuming the Cat class is in 'cat.dart'

class CatDetails extends StatelessWidget {
  final Cat cat;

  const CatDetails({required this.cat, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(cat.name)),
      body: Detail(cat: cat),
    );
  }
}

class Detail extends StatefulWidget {
  final Cat cat;

  const Detail({required this.cat, Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  var isNameColor = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(widget.cat.imageLink),
        Text(
          widget.cat.name,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: isNameColor ? Colors.deepPurple : Colors.black,
          ),
        ),
        Text('Origin: ${widget.cat.origin}'),
        Text('Max Weight: ${widget.cat.maxWeight}'),
        Text('Min Weight: ${widget.cat.minWeight}'),
        Text('Length: ${widget.cat.length}'),
        ElevatedButton(
          onPressed: () {
            setState(() {
              isNameColor = !isNameColor;
            });
          },
          child: Text('Change Name Color'),
        )
      ],
    );
  }
}