import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/drawer.dart';
import '../widgets/item_wwidget.dart';

//* Day 11 Learn about context, constraints

class HomePage extends StatelessWidget {
  final int day = 1;
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Catelog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          // itemCount: CatalogModel.items.length,
          itemCount: dummyList.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidget(
              // item: CatalogModel.items[index],
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
