import 'package:example/view/firebase_example/firebase_viewmodel.dart';
import 'package:flutter/material.dart';

class FirebaseView extends StatefulWidget {
  const FirebaseView({super.key});

  @override
  State<FirebaseView> createState() => _FirebaseViewState();
}

class _FirebaseViewState extends FirebaseViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Example'),
      ),
    );
  }
}
