import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileProvider {
  final CollectionReference _reference = FirebaseFirestore.instance.collection('users');

  Stream<DocumentSnapshot<Object?>> getUser(String id) {
    return _reference.doc(id).snapshots();
  }
}