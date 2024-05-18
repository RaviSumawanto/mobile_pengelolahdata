import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../appBarCostume.dart';

class kakenturanbarat extends StatefulWidget {
  const kakenturanbarat({super.key});

  @override
  State<kakenturanbarat> createState() => _kakenturanbaratState();
}

class _kakenturanbaratState extends State<kakenturanbarat> {
  final _userStream =
      FirebaseFirestore.instance.collection('kakenturanbarat').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const Appbarcostume(
          titlebar: 'Kakenturan Barat',
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
                    subtitle: Text('Luas Tanah : ${docs[index]['luas']}'),
                    trailing: Text('Produksi : ${docs[index]['produksi']}'),
                  );
                });
          },
        ),
      ],
    ));
  }
}
