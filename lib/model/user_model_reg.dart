import 'package:firebase_auth/firebase_auth.dart';

class UserModelReg {
  String? uid;
  String? email;
  String? name;
  String? password;

  UserModelReg({this.uid, this.email, this.name, this.password});

  // reveive data from server
  factory UserModelReg.fromMap(map) {
    return UserModelReg(
        uid: map['uid'],
        email: map['email'],
        name: map['name'],
        password: map['password']);
  }
  
  // send data to server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'password': password,
    };
  }
}
