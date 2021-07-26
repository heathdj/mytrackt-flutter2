import 'package:flutter/material.dart';

class CategoryChecklistsScreen extends StatelessWidget {
  const CategoryChecklistsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle!),
        ),
        body: Center(
          child: Text("Checklists go here"),
        ));
  }
}
