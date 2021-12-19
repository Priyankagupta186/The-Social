// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:the_social/model/user_model_reg.dart';
import 'package:the_social/screens/home_screeen.dart';
import 'package:the_social/screens/login_screen.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // form key
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;

  // editing controller
  final TextEditingController emailControllerSignup =
      new TextEditingController();
  final TextEditingController passwordControllerSignup =
      new TextEditingController();
  final TextEditingController nameControllerSignup =
      new TextEditingController();
  final TextEditingController confPasswordControllerSignup =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Name field
    final nameField = TextFormField(
      autofocus: false,
      controller: nameControllerSignup,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regExp = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return "Name can't be Empty";
        }
        if (!regExp.hasMatch(value)) {
          return "Name should be minimum 3 character";
        }
        return null;
      },
      onSaved: (newValue) {
        nameControllerSignup.text = newValue!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.people),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Full name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    // email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailControllerSignup,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return "Please Enter Your Email";
        }
        // regex for email validation
        if (!RegExp("^[a-zA-z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return "Please enter a valid email";
        }
        return null;
      },
      onSaved: (value) {
        emailControllerSignup.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    // password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordControllerSignup,
      obscureText: true,
      validator: (value) {
        RegExp regExp = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return "Password can't be Empty";
        }
        if (!regExp.hasMatch(value)) {
          return "Password should be minimum 5 character";
        }
      },
      onSaved: (value) {
        passwordControllerSignup.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    // confirm password field
    final confpasswordField = TextFormField(
      autofocus: false,
      controller: confPasswordControllerSignup,
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return "Confirm con't be Empty";
        }
        // if (value.length < 6) {
        //   return "Confirm password should be minimum 6 character";
        // }
        if (passwordControllerSignup.text != value) {
          return "Confirm Password don't match";
        }
        return null;
      },
      onSaved: (value) {
        passwordControllerSignup.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );

    // signup Button Field
    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => SignUp()));
          signUp(emailControllerSignup.text, passwordControllerSignup.text);
        },
        child: Text(
          "Signup",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () {
            // go back to previous page
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
            child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 180,
                      child: Image.asset(
                        'assets/images/wel.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                    nameField,
                    SizedBox(
                      height: 10,
                    ),
                    emailField,
                    SizedBox(
                      height: 15,
                    ),
                    passwordField,
                    SizedBox(
                      height: 10,
                    ),
                    confpasswordField,
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70, right: 70),
                      child: signupButton,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Already have an account?  ",
                          style: TextStyle(fontSize: 16),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
        )),
      ),
    );
  }

  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {sendUserDataToFireStrore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  sendUserDataToFireStrore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModelReg userModeReg = UserModelReg();

    userModeReg.email = user!.email;
    userModeReg.uid = user.uid;
    userModeReg.name = nameControllerSignup.text;
    userModeReg.password = passwordControllerSignup.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModeReg.toMap());

    Fluttertoast.showToast(msg: "Account created");

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
        (route) => false);
  }
}
