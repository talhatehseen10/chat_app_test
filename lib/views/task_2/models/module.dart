import 'package:chat_test_app/views/task_2/models/cakes.dart';

class Module {
  final String id;
  final String name;
  final List<Cake> cakes;

  Module({required this.id, required this.name, required this.cakes});

  factory Module.fromJson(Map<String, dynamic> json) {
    return Module(
      id: json['id'],
      name: json['name'],
      cakes:
          (json['cakes'] as List).map((cake) => Cake.fromJson(cake)).toList(),
    );
  }
}
