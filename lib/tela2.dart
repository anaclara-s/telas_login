import 'package:flutter/material.dart';


class Pagina extends StatelessWidget {
  const Pagina ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Pagina2(),
    );
  }
}



class Pagina2 extends StatelessWidget {
  const Pagina2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Tela 2'),
        centerTitle: true,
        backgroundColor:Colors.transparent,
        elevation: 0,
        ),

    body: SizedBox(
      child: Stack(
        children: [
          Positioned(
            child: Image.asset('assets/imagens/lua.jpg'),
          ),
        ],
      ),
    ),
    );

  }
}