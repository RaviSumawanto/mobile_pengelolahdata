import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../appBarCostume.dart';

class kakenturan extends StatefulWidget {
  const kakenturan({super.key});

  @override
  State<kakenturan> createState() => _kakenturanState();
}

class _kakenturanState extends State<kakenturan> {
  final _userStream =
      FirebaseFirestore.instance.collection('kakenturan').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const Appbarcostume(
          titlebar: 'Kakenturan',
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
