import 'package:flutter/material.dart';
import 'package:handson_aula4_img/pages/add_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Imagens + StatefulWidget',
              style: TextStyle(fontSize: 20)),
        ),
        body: const Column(
          children: [
            Align(
              alignment: Alignment.center, 
              child: AddImage()),
          ],
        ));
  }
}
