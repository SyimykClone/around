import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../models/poi.dart';

class PoiApi {
  static const String baseUrl = "http://10.0.2.2:8000";

  static Future<List<Poi>> fetchPois() async {
    final uri = Uri.parse("$baseUrl/pois");
    final res = await http.get(uri);

    if (res.statusCode != 200) {
      throw Exception("Failed to load POIs: ${res.statusCode} ${res.body}");
    }

    final List data = jsonDecode(res.body) as List;
    return data.map((e) => Poi.fromJson(e as Map<String, dynamic>)).toList();
  }
}