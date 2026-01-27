import 'package:flutter/material.dart';
import '../../models/poi.dart';
import '../../core/api/poi_api.dart';

class PoiListScreen extends StatelessWidget {
  const PoiListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('POI List')),
      body: FutureBuilder<List<Poi>>(
        future: PoiApi.fetchPois(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final pois = snapshot.data ?? [];

          return ListView.builder(
            itemCount: pois.length,
            itemBuilder: (context, index) {
              final poi = pois[index];
              return ListTile(
                title: Text(poi.name),
                subtitle: Text(poi.description),
                onTap: () {
                  Navigator.pushNamed(context, '/poi-detail');
                },
              );
            },
          );
        },
      ),
    );
  }
}