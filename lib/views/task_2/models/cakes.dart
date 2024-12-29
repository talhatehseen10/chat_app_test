class Cake {
  final String id;
  final String type;
  final String content;
  final String? description;

  Cake(
      {required this.id,
      required this.type,
      required this.content,
      this.description});

  factory Cake.fromJson(Map<String, dynamic> json) {
    return Cake(
      id: json['id'],
      type: json['type'],
      content: json['content'],
      description: json['description'],
    );
  }
}
