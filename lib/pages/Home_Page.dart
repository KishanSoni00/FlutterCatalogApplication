import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

//* Day 11 Learn about context, constraints

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int day = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Learn Flutter Day $day"),
          //  child: Text(context.runtimeType.toString()),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
