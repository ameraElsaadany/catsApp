import 'package:first_app/widgets/catDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Cat.dart';
import '../Cat.dart';

class catDetails extends StatelessWidget {
  final Cat cat;
  const catDetails({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(cat.name)),
        body: Detail(
          cat: cat,
        ));
  }
}
