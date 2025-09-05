import 'package:cartify/Pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widget/support_widget.dart';
import 'bottomnav.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  String? name,email,password;
  TextEditingController nameController = new TextEditingController();
  TextEditingController mailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  residtration()async{
    if(password!=null && name!=null && email!=null){
      try{
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email!, password: password!);

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text('Resitered Successfully',style: TextStyle(fontSize: 20,),),));
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomnav()));
      }on FirebaseAuthException catch(e){
        if(e.code == 'weak-Password'){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text('Password Provided is too weak',style: TextStyle(fontSize: 20,),),));
        }else if(e.code == 'email-aready-in-use'){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text('Account Already exsists ',style: TextStyle(fontSize: 20,),),));
        }

      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40,left: 20,right: 20,bottom: 40),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("images/login.png",),
                SizedBox(height: 5,),
                Center(child: Text("Sign Up",style: AppWidget.semiBoldTextFeildStyle(),)),
                SizedBox(height: 20,),
                Center(child: Text("Please enter the details below to \n                     continue.",style: AppWidget.LightTextFeildStyle(),)),
                SizedBox(height:20,),
                Text("Name",style: AppWidget.semiBoldTextFeildStyle(),),
                SizedBox(height: 20,),
                Container(
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFFF4F5F9),
                        borderRadius: BorderRadius.circular(20)
                    ),

                    child: TextFormField(
                      validator: (value){
                        if(value==null || value.isEmpty){
                          return 'Please Enter Your Name';
                        }

                        return null;
                      },
                      controller: nameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name",
                      ),
                    )),
                SizedBox(height: 20,),
                Text("Email",style: AppWidget.semiBoldTextFeildStyle(),),
                SizedBox(height: 20,),
                Container(
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFFF4F5F9),
                        borderRadius: BorderRadius.circular(20)
                    ),

                    child: TextFormField(
                      validator: (value){
                        if(value==null || value.isEmpty){
                          return 'Please Enter Your Email.';
                        }

                        return null;
                      },
                      controller: mailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                      ),
                    )),

                SizedBox(height: 20,),
                Text("Password",style: AppWidget.semiBoldTextFeildStyle(),),
                SizedBox(height: 20,),
                Container(
                    padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFFF4F5F9),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextFormField(
                      obscureText: true,
                      validator: (value){
                        if(value==null || value.isEmpty){
                          return 'Please Enter Your Password';
                        }

                        return null;
                      },
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                      ),
                    )),
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    if(_formkey.currentState!.validate()){
                      setState(() {
                        name = nameController.text;
                        email = mailController.text;
                        password = passwordController.text;

                      });
                    }
                    residtration();
                  },
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width/2,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("SIGN UP",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account ? ",style: AppWidget.LightTextFeildStyle(),),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                      },
                        child: Text("Sign In",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.w500),)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

