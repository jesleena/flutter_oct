import 'package:flutter/material.dart';
import 'package:flutter_october/screens/home.dart';
import 'package:flutter_october/screens/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  //for fetching values from textfield
  final uname_ctrl = TextEditingController();
  final pwd_ctrl = TextEditingController();

  String username = "luminar@gmail.com";
  String password = "123456";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("login"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/bird.png",
            height: 50,
            width: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: uname_ctrl,
              decoration: InputDecoration(
                  hintText: "Username",
                  helperText: "Username should be an email ",
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: pwd_ctrl,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  hintText: "Password",
                  helperText: "Password should be atleast 6 characters ",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (uname_ctrl.text != "" && pwd_ctrl.text != "") {
                  if (uname_ctrl.text == username &&
                      pwd_ctrl.text == password) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Home()));
                  }
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("username/password incorrect")));
                  }
                }
                else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.red,
                      content: Text("username and password should not be null")));
                }
              },
              child: Text("Login",
                  style: GoogleFonts.pacifico(
                    //color: Colors.black,
                    fontSize: 15,
                  ))),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Text("Not a user!!!!! Register here",
                  style: GoogleFonts.pacifico(
                    //color: Colors.black,
                    fontSize: 15,
                  )))
        ],
      ),
    );
  }
}
