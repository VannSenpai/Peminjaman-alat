import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? id;
  final String nama;
  final String email;
  final String role;
  final dynamic createdAt;

  UserModel({
    this.id,
    required this.nama,
    required this.email,
    required this.role,
    this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'nama': nama,
      'email': email,
      'role': role,
      'createdAt': FieldValue.serverTimestamp(),
    };
  }
}
