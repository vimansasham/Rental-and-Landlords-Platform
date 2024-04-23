import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(
      String email, String password, String userName) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      // Save user data to Firestore
      await saveUserDataToFirestore(credential.user?.uid, userName, email);

      return credential.user;
    } catch (e) {
      print("Error during sign up: $e");
      return null;
    }
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Error during sign in: $e");
      return null;
    }
  }

  Future<void> saveUserDataToFirestore(
      String? userId, String userName, String email) async {
    await FirebaseFirestore.instance.collection('users').doc(userId).set({
      'userName': userName,
      'email': email,
      // Add more user data fields as needed
    });
  }
}
