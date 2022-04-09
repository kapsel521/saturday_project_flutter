import 'package:flutter/material.dart';

void main() {
  runApp(Saturday());
}

class Saturday extends StatefulWidget {
  const Saturday({Key? key}) : super(key: key);

  @override
  _SaturdayState createState() => _SaturdayState();
}

class _SaturdayState extends State<Saturday> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("saturday"), actions: [
              IconButton(
                  onPressed: () => addOne(), icon: const Icon(Icons.add)),
              IconButton(
                  onPressed: () => subtractOne(),
                  icon: const Icon(Icons.remove))
            ]),
            body: Container(
              child: Text(number.toString(),
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 50,
                      fontWeight: FontWeight.bold)),
              alignment: Alignment.center,
            )));
  }

  addOne() {
    setState(() {
      number++;
    });
  }

  subtractOne() {
    setState(() {
      number--;
    });
  }
}
