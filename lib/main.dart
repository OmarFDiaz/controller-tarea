import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/controller/searchdummy_controller.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final searchdummycontroller c_Set = Get.put(searchdummycontroller());
  final searchdummycontroller searchdummy =
      Get.put(searchdummycontroller().searchTextValue);
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Esto es un test'),
        actions: [
          IconButton(
            icon: searchController.text.isEmpty
                ? const Icon(Icons.search)
                : const Icon(Icons.clear),
            onPressed: () {
              c_Set.updateSearchText(searchController.text);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$searchdummy'),
          ],
        ),
      ),
    );
  }
}
