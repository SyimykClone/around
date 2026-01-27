class Poi {
  final int id;
  final String name;
  final String description;

  Poi({
    required this.id,
    required this.name,
    required this.description,
  });

  factory Poi.fromJson(Map<String, dynamic> json) {
    return Poi(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
    );
  }
}