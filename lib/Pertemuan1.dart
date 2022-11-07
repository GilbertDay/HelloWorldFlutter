import 'package:flutter/material.dart';

class Pertemuan1 extends StatefulWidget {
  const Pertemuan1({super.key, required this.title});

  final String title;

  @override
  State<Pertemuan1> createState() => _Pertemuan1State();
}

class _Pertemuan1State extends State<Pertemuan1> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Test Input',
                hintText: 'Test yang akan diinput',
              ),
            ),
            const Padding(padding: EdgeInsets.all(15.0)),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Test Input',
                  hintText: 'Test yang akan diinput',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Simpan",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
