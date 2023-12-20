import 'package:flutter/material.dart';
import 'home.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool hidepwd=true;
  bool showpwd1=true;
  var comfirmpass;
  final formkey=GlobalKey<FormState>(); //to validate entire form
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("SignUp")),
      body: Form(
        key: formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/bird.png",
                height: 50,
                width: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  validator: (email){
                    if(email!.isEmpty  || !email.contains('@'))
                    {
                    return"Enter a valid email id" ;
                    }
                    else return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  obscureText: hidepwd,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    hintText: "Password",
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        if(hidepwd){
                          hidepwd=false;
                        }
                        else{
                          hidepwd=true;
                        }
                      });
                    }, icon: Icon(hidepwd==true?Icons.visibility:Icons.visibility_off))

                  ),
                  validator: (password){
                    comfirmpass=password;
                    if(password!.isEmpty || password.length<6)
                    { return"Password should not be empty or length > 6";}

                  else return null;
                  },
                ),
              ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              obscureText: showpwd1,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  hintText: "Password",
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      if(showpwd1){
                        showpwd1=false;
                      }
                      else{
                        showpwd1=true;
                      }
                    });
                  }, icon: Icon(showpwd1==true?Icons.visibility:Icons.visibility_off))

              ),
              validator: (cpassword){
                if(cpassword  != comfirmpass|| cpassword!.isEmpty){
                  return"Password mismatch /empty";
                }
                else return null;
              },

              )),

              ElevatedButton(onPressed: (){
                var isValid=formkey.currentState!.validate();
                if(isValid==true){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Home()));
                }
              }, child: Text("signup"))

          ],
          )),
    );
  }
}
