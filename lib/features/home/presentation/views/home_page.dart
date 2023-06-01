import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Athaan App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // CustomTextField(
          //   hintName: "Enter the Country Name",
          // ),
          TextField(
            onSubmitted: (value) {},
          ),
          ElevatedButton(onPressed: () {}, child: Text("Loading resulte")),
          Text("Fajer: "),
          Text("Shorouq: "),
          Text("Duhour: "),
          Text("Aser: "),
          Text("Maghreb: "),
          Text("Eshaa: "),
        ],
      ),
    );
  }
}
