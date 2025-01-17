// ignore_for_file: unused_local_variable

import 'package:codenoah/codenoah.dart';
import 'package:example/view/firebase_example/firebase_view.dart';
import 'package:flutter/material.dart';

abstract class FirebaseViewModel extends State<FirebaseView> {
  Future<void> exampleCollection() async {
    // collection
    final collectRef =
        await FirebaseService().cloudFireStore.collection('User').get();

    // authentication
    final authRef =
        await FirebaseService().authService.createUserWithEmailAndPassword(
              email: 'hello@gmail.com',
              password: "123",
            );

    // auth id
    final userId = FirebaseService().authID;
  }
}
