/*//normal

import 'package:flutter/material.dart';
import 'package:views/res/data.dart';
import 'package:views/widgets/catview.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final cat = Cat.data[0];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        body: CatView(
                name: cat["name"],
                age: cat["age"],
                color: cat["color"],
                address: cat["address"],
                phone: cat["phone"],
                photo: cat["photo"],
              )
      ),
    );
  }
}*/

//gridview
import 'package:flutter/material.dart';
import 'package:views/res/data.dart';
import 'package:views/widgets/catview.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  childAspectRatio: 1.8/2.4
                ),
            itemCount: Cat.data.length,
            itemBuilder: (context, index) {
              final cat = Cat.data[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: CatView(
                  name: cat["name"],
                  age: cat["age"],
                  color: cat["color"],
                  address: cat["address"],
                  phone: cat["phone"],
                  photo: cat["photo"],
                ),
              );
            }),
      ),
    );
  }
}

/*
//listview
import 'package:flutter/material.dart';
import 'package:views/res/data.dart'; // Path to your Cat data
import 'package:views/widgets/catview.dart'; // Path to your CatView widget

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        body: Container(
          decoration: BoxDecoration(
          ),
          width: 200,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: Cat.data.length,
            itemBuilder: (context, index) {
              final cat = Cat.data[index];
              return Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: CatView(
                  name: cat["name"],
                  age: cat["age"],
                  color: cat["color"],
                  address: cat["address"],
                  phone: cat["phone"],
                  photo: cat["photo"],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
 */
