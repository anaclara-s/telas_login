import 'package:flutter/material.dart';
import 'tela2.dart';


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
        title: const Text('Tela 1'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        //
      ),
      drawer: Drawer(
        width: 150,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 80,
              child:
                DrawerHeader(
                  child: Text('MENU'),
                  decoration: const BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                ),
              ),
            
              ListTile(
                title: Text('Tela 2'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: 
                      (context) => Pagina2()),
                    );
                },
              )
          ],
        ),
      ),
    //
    body: SizedBox(
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Image.asset('assets/imagens/sol.jpg'),
              ),
              Positioned(
                top: 290,
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 184, 59),
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

