import 'package:flutter/material.dart';

void main() => runApp(const Pagina());

class Pagina extends StatelessWidget {
  const Pagina({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Pagina0(),
    );
  }
}

class Pagina0 extends StatelessWidget {
  const Pagina0 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('TESTE'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    //
    body: SizedBox(
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Image.asset('assets/imagens/fundo0.png'),
              ),
              Positioned(
                top: 290,
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(251, 101, 132, 165),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
              )
        ],
      ),
    ),
    
    //
    );
  }
}

