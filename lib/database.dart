import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';


class DatabaseManager {
//collection reference

  final CollectionReference userData = FirebaseFirestore.instance.collection(
      'userList');


}

