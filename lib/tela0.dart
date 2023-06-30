// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';


// class tela0 extends StatelessWidget {
//   const tela0({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: LoginPag(),
//     );
//   }
// }


// class LoginPag extends StatefulWidget {
//   const LoginPag({super.key});

//   @override
//   _LoginPagState createState() => _LoginPagState();
// }

// class _LoginPagState extends State<LoginPag> {
//   void EstadoInicio() {
//     SystemChrome.setEnabledSystemUIMode;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//           child: Stack(
//             children: <Widget>[
//               Positioned(
//                 child: Image.asset('assets/imagens/fundo0.png'),
//               ),
//               //
//               Positioned(
//                 top: 500,
//                 child: Container(
//                   padding: const EdgeInsets.all(30),
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height,
//                   decoration: const BoxDecoration(
//                     color: Color.fromARGB(216, 101, 132, 165),
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(90),
//                         topRight: Radius.circular(90)),
//                   ),
//                   child: Column(
//                     children: <Widget>[
//                       const TextField(
//                         decoration: InputDecoration(hintText: 'Usuário'),
//                       ),
//                       const Padding(
//                         padding: EdgeInsets.only(top: 20, bottom: 20),
//                         child: TextField(
//                           decoration: InputDecoration(hintText: 'Senha'),
//                         ),
//                       ),
//                       Container(
//                         height: 40,
//                         width: 100,
//                         decoration: const BoxDecoration(
//                           color: Color.fromARGB(255, 92, 122, 154),
//                           borderRadius: BorderRadius.all(Radius.circular(35)),
//                         ),
//                         //
//                         child: const Center(
//                           child: Text(
//                             'ENTRAR',
//                             style: TextStyle(
//                                 color: Color.fromARGB(255, 154, 203, 255)),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         height: 20,
//                       ),
//                       const Text(
//                         'Criar conta',
//                         style: TextStyle(color: Color.fromARGB(195, 43, 86, 134)),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//   }
// }