import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fakeminakomi/main.dart';

class Body_container extends StatefulWidget {
  const Body_container({super.key});

  @override
  State<Body_container> createState() => _Body_container();
}

class _Body_container extends State<Body_container> {
  int _counter = 0;
  void onPressed() {
    setState(() {
      _counter++;
    });
  }

  void onReset() {
    setState(() {
      _counter = 0;
    });
  }

  static const Color startcolor = Color.fromARGB(255, 25, 2, 8);
  static const Color endcolor = Color.fromARGB(255, 150, 39, 175);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: onPressed,
            child: Text('$_counter'),
          ),
          TextButton(
            onPressed: onReset,
            child: Text("reset"),
          )
        ],
      ),
    );

    // decoration: const BoxDecoration(
    //   gradient: LinearGradient(
    //     colors: [
    //       startcolor,
    //       endcolor,
    //     ],
    //     begin: Alignment.topCenter,
    //     end: Alignment.bottomRight,
    //   ),
    //   Text("")
    //   TextButton(child: Text("Tong"),),
    // ), // child: StyleText('Lucius Fox'),
  }
}
