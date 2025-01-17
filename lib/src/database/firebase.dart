// CODENOAH
// -----------------------------------
//   ####    #####   #####    #######  ##   ##   #####     ###     ##  ##
//  ##  ##  ### ###   ## ##    ##   #  ###  ##  ### ###   ## ##    ##  ##
// ##       ##   ##   ##  ##   ##      #### ##  ##   ##  ##   ##   ##  ##
// ##       ##   ##   ##  ##   ####    #######  ##   ##  ##   ##   ######
// ##       ##   ##   ##  ##   ##      ## ####  ##   ##  #######   ##  ##
//  ##  ##  ### ###   ## ##    ##   #  ##  ###  ### ###  ##   ##   ##  ##
//   ####    #####   #####    #######  ##   ##   #####   ##   ##   ##  ##
// -----------------------------------
// Publisher: Nuhcan ATAR
// LinkedIn: https://www.linkedin.com/in/nuhcan-atar-371276208/
// GitHub: https://github.com/NuhcanATAR
// E-mail: nuhcanatar20@gmail.com
// -----------------------------------
// Description: service class developed to easily connect to firebase services.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? _authID;

  FirebaseService() {
    _initialize();
  }

  FirebaseFirestore get cloudFireStore => _firestore;

  FirebaseAuth get authService => _auth;

  String? get authID => _authID;

  // Gets the UID if the user is logged in.
  void _initialize() {
    if (_auth.currentUser != null) {
      _authID = _auth.currentUser!.uid; // Get the UID of the logged in user.
    } else {
      _authID = null; // Make null if there are no logged in users.
    }
  }

  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
}
