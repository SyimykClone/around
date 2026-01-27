import 'package:flutter/material.dart';

class PoiDetailScreen extends StatelessWidget {
  const PoiDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('POI Detail')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text('POI details will be here'),
      ),
    );
  }
}
