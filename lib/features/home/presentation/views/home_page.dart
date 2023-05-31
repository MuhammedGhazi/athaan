import 'package:athaan/features/home/data/services/athaan_service.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_text_field.dart';

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
          CustomTextField(
            hintName: "Enter the Country Name",
          ),
          CustomTextField(
            hintName: "Enter the City Name",
          ),
          ElevatedButton(
              onPressed: () {
                AthaanService serv = AthaanService();
                var as = serv.getAthaanModel();
              },
              child: Text("Loading resulte")),
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
