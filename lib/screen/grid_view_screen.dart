import 'package:classtest1/common/my_button_widget.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  final String name = "Shreejan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shreejan Manandhar"),
        backgroundColor: Colors.orange[500],
        centerTitle: true,
        elevation: 50,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(name.length, (index) {
          return MyButtonWidget(
            text: name[index],
          );
        }),
      ),
    );
  }
}
