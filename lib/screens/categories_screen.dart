import 'package:flutter/material.dart';
import 'package:todoapp/screens/home_screen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  _showFormDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (params) {
          return AlertDialog(
            actions: [
              TextButton(
                  onPressed: ()=> Navigator.pop(context),
                  child: Text("Cancel"),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                  )),
              TextButton(onPressed: () {}, child: Text("Save")),
            ],
            title: Text("Categories Form"),
            content: SingleChildScrollView(
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "Write a category", labelText: "Category"),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Description", labelText: "Description"),
                ),
              ]),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeScreen())),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text("Categories"),
      ),
      body: Center(child: Text("Welcome to categories screen")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showFormDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
