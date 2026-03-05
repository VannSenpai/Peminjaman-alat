import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? id;
  final String nama;
  final String email;
  final String role;
  String? profile;
  final dynamic createdAt;

  UserModel({
    this.id,
    required this.nama,
    required this.email,
    required this.role,
    this.profile,
    this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'nama': nama,
      'email': email,
      'role': role,
      'profile': profile ?? '-',
      'createdAt': FieldValue.serverTimestamp(),
    };
  }
}
