import 'package:flutter/material.dart';

class AddImage extends StatefulWidget {
  const AddImage({super.key});

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  String texto = "Adicionar imagem";
  bool showImage = false;

  void aparecerImagem() {
    setState(() {
      debugPrint("aparecerImagem");
      showImage = true;
    });
  }

  void desaparecerImagem() {
    setState(() {
      debugPrint("desaparecerImagem");
      showImage = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(75.0),
            child: GestureDetector(
              onTap: aparecerImagem,
              child: Container(
                width: 320,
                height: 370,
                color: showImage ? Colors.transparent : const Color.fromARGB(255, 217, 217, 217),
                child: showImage ? Image.asset('assets/images/capa.jpg') : Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 135),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.add, color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              texto,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
            width: 10,
          ),
          SizedBox(
            width: 320,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                elevation: 40,
              ),
              onPressed: () {
                desaparecerImagem();
              },
              child: const Text(
                'Resetar imagem',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
