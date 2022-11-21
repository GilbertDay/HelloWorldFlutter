// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:hello_world/splashscreen.dart';

void main() {
  runApp(const MaterialApp(
    home: Splashscreen(title: 'Demo App'),
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen(
//       seconds: 14,
//       navigateAfterSeconds: const Pertemuan1(title: 'Demo App'),
//       title: const Text(
//         'Welcome In SplashScreen',
//         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
//       ),
//       image: Image.asset('images/logo-144.png'),
//       backgroundColor: Colors.white,
//       loaderColor: Colors.red,
//     );
//   }
// }

  // void navigateLogin() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   int? isLogin = pref.getInt("is_login");
  //   if (isLogin == 1) {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => const Pertemuan1(title: 'Demo App Gilbert')),
  //     );
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   navigateLogin();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(widget.title),
  //     ),
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           const Text(
  //             'You have pushed the button this many times:',
  //           ),
  //           Text(
  //             '$_counter',
  //             style: Theme.of(context).textTheme.headline4,
  //           ),
  //           ElevatedButton(
  //               onPressed: () async {
  //                 SharedPreferences pref =
  //                     await SharedPreferences.getInstance();
  //                 await pref.setInt("is_login", 1);
  //                 Navigator.pushReplacement(
  //                   context,
  //                   MaterialPageRoute(
  //                       builder: (context) =>
  //                           const Pertemuan1(title: 'Demo App Gilbert')),
  //                 );
  //               },
  //               child: const Text('Login'))
  //         ],
  //       ),
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: _incrementCounter,
  //       tooltip: 'Increment',
  //       child: const Icon(Icons.add),
  //     ),
  //   );
  // }
// }
