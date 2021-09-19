import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pernaldata/core/models/student.dart';

class DatabaseServices {
  final _fireStore = FirebaseFirestore.instance;
  getAccountRecord() {}
  // ignore: non_constant_identifier_names
  CreateAccount(Student student) async {
    try {
      await _fireStore.collection('user').add(student.toJson()) ;
    } catch (e) {
      print(e);
    }
  }

  updateAccountRecord() {}
}
