import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
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
        actions: [
          IconButton(
            icon: ToggleSwitch(
              minWidth: 10,
              minHeight: 20,
              initialLabelIndex: 0,
              activeBgColor: const [Color.fromARGB(255, 217, 0, 255)],
              activeFgColor: const Color.fromARGB(255, 9, 255, 0),
              inactiveBgColor: const Color.fromARGB(255, 0, 0, 0),
              inactiveFgColor: const Color.fromARGB(255, 248, 248, 248),
              labels: const ['On', 'Off'],
              onToggle: ((index) {
                print('mudou');
              }),
            ),
            onPressed: () {
              print('Click');
            },
          )
        ],
      ),

      //
      drawer: Drawer(
        width: 150,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 80,
              child:
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: Text('MENU'),
                ),
              ),
            
              ListTile(
                title: const Text('Tela 2'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: 
                      (context) => const Pagina2()),
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
                  padding: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(192, 248, 229, 150),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  //
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Usuário'
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 20),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Senha'),
                        ),
                        ),
                        //
                        Container(
                          height: 40,
                          width: 110,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 199, 87),
                            borderRadius: BorderRadius.all(Radius.circular(30),),
                          ),
                          child: const Center(
                            child: Text(
                              'Entrar',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                        //
                        Container(
                          height: 20,
                        ),
                        const Text('Criar conta',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 141, 94, 0)
                        ),
                        ),
                    ],
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

