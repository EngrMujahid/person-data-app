import 'package:firebase_auth/firebase_auth.dart';
import 'package:pernaldata/core/models/student.dart';
import 'package:pernaldata/core/services/database_service.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  final _dbService = DatabaseServices();
  login(email, password) async {
    final credentials = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    try {
      if (credentials.user != null) {
        //login success
        return true;
      }
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  CreateAccount(Student student) async {
    try {
      final credentials = await _auth.createUserWithEmailAndPassword(
          email: student.email, password: student.password);
      if (credentials.user != null) {
        //create account success
        //store data account
        await _dbService.CreateAccount(student);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      return false;
    }
  }
}
