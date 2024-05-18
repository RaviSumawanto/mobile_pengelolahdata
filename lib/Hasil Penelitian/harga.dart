import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../appBarCostume.dart';

class harga extends StatefulWidget {
  const harga({super.key});

  @override
  State<harga> createState() => _hargaState();
}

class _hargaState extends State<harga> {
  final _userStream =
      FirebaseFirestore.instance.collection('harga').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const Appbarcostume(
          titlebar: 'Harga',
        ),
        StreamBuilder(
          stream: _userStream,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('Connection Error');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading..");
            }
            var docs = snapshot.data!.docs;
            return ListView.builder(
                shrinkWrap: true,
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.add_to_home_screen_rounded),
                    title: Text(docs[index]['bahan']),
                    subtitle: Text('Tanggal :${docs[index]['ymd']}'),
                    trailing: Text('Harga : Rp${docs[index]['harga']}'),
                  );
                });
          },
        ),
      ],
    ));
  }
}
