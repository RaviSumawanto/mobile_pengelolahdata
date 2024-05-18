import 'package:flutter/material.dart';
import 'package:d_chart/d_chart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../appBarCostume.dart';

class Perkembangan extends StatelessWidget {
  Perkembangan({super.key});
  final streamChart = FirebaseFirestore.instance
      .collection('data')
      .snapshots(includeMetadataChanges: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Appbarcostume(
            titlebar: 'Diagram',
          ),
          StreamBuilder(
              stream: streamChart,
              builder: (context,
                  AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                if (snapshot.hasError) {
                  return const Text('Someting went wrong');
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Text('Loading');
                }
                if (snapshot.data == null) {
                  return const Text('Empty');
                }
                List listChart = snapshot.data!.docs.map((e) {
                  return {
                    'domain': e.data()['bahan'],
                    'measure': e.data()['jumlah'],
                  };
                }).toList();
                return AspectRatio(
                  aspectRatio: 16 / 9,
                  child: DChartBar(
                    data: [
                      {
                        'id': 'Bar',
                        'data': listChart,
                      },
                    ],
                    domainLabelPaddingToAxisLine: 16,
                    axisLineTick: 2,
                    axisLinePointTick: 2,
                    axisLinePointWidth: 10,
                    axisLineColor: Colors.green,
                    measureLabelPaddingToAxisLine: 16,
                    barColor: (barData, index, id) => Colors.green,
                    showBarValue: true,
                  ),
                );
              }),
        ],
      ),
    );
  }
}
