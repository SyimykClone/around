import 'package:flutter/material.dart';
import '../../mock/mock_poi.dart';

class PoiListScreen extends StatelessWidget {
  const PoiListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('POI List')),
      body: ListView.builder(
        itemCount: mockPoiList.length,
        itemBuilder: (context, index) {
          final poi = mockPoiList[index];
          return ListTile(
            title: Text(poi.name),
            subtitle: Text(poi.description),
            onTap: () {
              Navigator.pushNamed(context, '/poi-detail');
            },
          );
        },
      ),
    );
  }
}
