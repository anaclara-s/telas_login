import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Tela2();
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 33, 87),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        title: const Text('Tela 2'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      //

      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(115, 151, 104, 172),
                  blurRadius: 8,
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.pinkAccent, Color.fromARGB(255, 5, 33, 87)],
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(150),
              ),
            ),
            child: const Icon(
              Icons.star_border_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 80,
            ),
          ),

          //

          SizedBox(
            width: 180,
            child: Column(
              children: <Widget>[
                //

                const Padding(
                  padding: EdgeInsets.all(30),
                ),
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 64, 128),
                      ),
                    ),
                    fillColor: const Color.fromARGB(48, 255, 64, 128),
                    prefixIcon: const Icon(
                      Icons.person_outline_rounded,
                      color: Color.fromARGB(218, 148, 103, 252),
                    ),
                    labelText: 'Usuário',
                    labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 168, 105, 240),
                    ),
                  ),
                ),

                //

                const Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                TextFormField(
                  obscureText: true,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 64, 195, 255),
                      ),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(48, 64, 195, 255),
                    prefixIcon: const Icon(
                      Icons.lock_outline_rounded,
                      color: Color.fromARGB(218, 64, 195, 255),
                    ),
                    labelText: 'Senha',
                    labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 61, 183, 240),
                    ),
                  ),
                ),

                //

                Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.transparent,
                          backgroundColor: Colors.transparent,
                        ),
                        onPressed: () {
                          print('ESQUECEU SENHA');
                        },
                        child: const Text(
                          'Esqueceu a senha',
                          style: TextStyle(
                            color: Color.fromARGB(153, 181, 185, 247),
                            fontSize: 10,
                          ),
                        ),
                      ),

                      //

                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                      ),
                      SizedBox(
                        width: 100,
                        height: 35,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.transparent,
                              backgroundColor:
                                  const Color.fromARGB(50, 255, 255, 255)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.check_rounded,
                                color: Color.fromARGB(255, 148, 103, 252),
                              ),
                              Text(
                                ' Entrar',
                                style: TextStyle(
                                  color:
                                      Color.fromARGB(255, 148, 103, 252),
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                            print('ENTAR');
                          },
                        ),
                      ),

                      //

                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shadowColor: Color.fromARGB(255, 0, 0, 0),
                          backgroundColor: const Color.fromARGB(255, 5, 33, 87),
                        ),
                        child: const Text(
                          'Criar conta',
                          style: TextStyle(
                            color: Color.fromARGB(172, 87, 98, 252),
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.end,
                        ),
                        onPressed: () {
                          print('CRIAR CONTA');
                        },
                      ),
                    ],
                  ),
                  //
                ),

                //
              ],
            ),
          ),
          //
        ],
      ),
      //
    );
  }
}
