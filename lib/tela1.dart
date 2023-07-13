import 'package:flutter/material.dart';
import 'tela2.dart';

class Pagina extends StatelessWidget {
  const Pagina({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Pagina1(),
    );
  }
}

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 212, 132),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        title: const Text('Tela 1'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      //

      drawer: Drawer(
        width: 150,
        child: ListView(
          children: [
            const SizedBox(
              height: 80,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 251, 212, 132),
                ),
                child: Text('MENU'),
              ),
            ),
            ListTile(
              title: const Text('Tela 2'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Tela2()),
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
            Center(
              child: Image.asset('assets/imagens/sol.jpg'),
            ),
            Positioned(
              top: 250,
              child: Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 248, 203, 114),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(135, 255, 255, 255),
                      blurRadius: 7,
                    ),
                  ],
                ),

                //

                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 236, 192),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 170, 0),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.person_2_outlined,
                          color: Colors.white,
                        ),
                        labelText: 'Usuário',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(top: 30),
                    ),

                    TextFormField(
                      style: const TextStyle(
                        color: Color.fromARGB(255, 90, 62, 6),
                      ),
                      obscureText: true,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 236, 192),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 255, 170, 0),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                        ),
                        labelText: 'Senha',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    //

                    Container(
                      alignment: Alignment.bottomCenter,
                      width: 115,
                      margin: const EdgeInsets.only(
                        top: 30,
                        bottom: 20,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 248, 248, 248),
                        ),
                        onPressed: () {
                          print('ENTRAR');
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.check,
                              color: Color.fromARGB(255, 90, 62, 6),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Entrar',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 90, 62, 6),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //

                    Container(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            backgroundColor: Colors.transparent),
                        onPressed: () {
                          print('CRIAR');
                        },
                        child: const Text('Criar Conta'),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
