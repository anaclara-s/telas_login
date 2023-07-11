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
  const Pagina1 ({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        titleTextStyle: 
        const TextStyle(
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
              child:
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.grey,
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
                      (context) => const Tela2()),
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
                child: Image.asset('assets/imagens/nada.jpg'),
              ),
              Positioned(
                top: 400,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 41, 41, 41),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),

                  //
                  
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          
                          prefixIcon: Icon(
                            Icons.person_2_outlined,
                            color: Color.fromARGB(255, 150, 150, 150),
                          ),

                          hintText: 'ex: 0000',
                          hintStyle: TextStyle(
                            color:Color.fromARGB(29, 255, 255, 255),
                          ),
                          labelText: 'Matrícula',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 150, 150, 150),
                          ),
                        ),  
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 30),
                        ),

                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),

                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Color.fromARGB(255, 150, 150, 150),
                          ),

                          hintText: 'ex: XXXX',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(29, 255, 255, 255),
                          ),
                          labelText: 'Senha',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 150, 150, 150),
                          )
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
                              backgroundColor: const Color.fromARGB(255, 248, 248, 248),
                            ),
                            onPressed: () {
                              print('ENTRAR');
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.check,
                                color: Colors.black,
                              ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'Entrar',
                                    style: TextStyle(
                                      color: Colors.black,
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
                              backgroundColor: Colors.transparent
                            ),
                            onPressed: () {
                              print('CRIAR');
                            },
                            child: const Text('Criar Conta')
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

