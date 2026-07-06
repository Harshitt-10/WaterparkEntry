import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static DocumentReference<Map<String, dynamic>> userReference(String uid) {
    return _firestore.collection('users').doc(uid);
  }

  static Future<bool> userExists(String uid) async {
    final snapshot = await userReference(uid).get();

    return snapshot.exists;
  }

  static Future<void> createUser({
    required User user,
    required String name,
  }) async {
    await userReference(user.uid).set({
      'uid': user.uid,
      'phoneNumber': user.phoneNumber,
      'name': name,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }

  static Future<DocumentSnapshot<Map<String, dynamic>>> getUser(String uid) {
    return userReference(uid).get();
  }

  static Stream<DocumentSnapshot<Map<String, dynamic>>> userStream(
    String uid,
  ) {
    return userReference(uid).snapshots();
  }
}