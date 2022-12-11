import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hello_world/mahasiswa/mahasiswa_add.dart';
import 'package:http/http.dart' as http;

class Mahasiswa_get extends StatefulWidget {
  const Mahasiswa_get({super.key});

  @override
  State<Mahasiswa_get> createState() => _Mahasiswa_getState();
}

class _Mahasiswa_getState extends State<Mahasiswa_get> {
  List _get = [];

  @override
  void initState() {
    super.initState();
    _getDataMhs();
  }

  Future _getDataMhs() async {
    try {
      final response = await http.get(
          Uri.parse('https://kpsi.fti.ukdw.ac.id/api/progmob/mhs/72200391'));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        setState(() {
          _get = data;
        });
      }
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRUD Mahasiswa'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Mahasiswa_add()));
        },
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.blue,
        // child: Container(height: 50.0),
      ),
      body: ListView.builder(
          itemCount: _get.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.red, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                title: Text(_get[index]['nim'] + " - " + _get[index]['nama']),
                subtitle: Text(_get[index]['email']),
              ),
            );
          }),
    );
  }
}
