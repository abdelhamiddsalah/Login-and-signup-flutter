import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: 
         SizedBox(
          width: double.infinity,
          height: double.infinity,
           child: Stack(children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: SingleChildScrollView(        
                child: Column(children: [
                const SizedBox(height: 30,),
                     const Text("Login" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
                      const SizedBox(height: 30,),
                      Image.asset("assets/images/login.png", width: 300,),
                      const SizedBox(height: 40,),
                      const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person, color: Colors.purple,),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide.none
                        ),
                        fillColor: Color(0xffe9e0f0),
                        filled: true
                      ),),
                      const SizedBox(height: 40,),
                      const TextField(
                        decoration: InputDecoration(
                           prefixIcon: Icon(Icons.password, color: Colors.purple,),
                         border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          borderSide: BorderSide.none
                        ),
                         fillColor: Color(0xffe9e0f0),
                        filled: true
                      ),),
                      const SizedBox(height: 40,),
                      MaterialButton(onPressed: (){
                        Navigator.pushNamed(context, "/login");
                      }, color: Colors.purple,minWidth: 400,
                       padding: const EdgeInsets.symmetric(horizontal: 86 , vertical: 13),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(27))
                        ,child: const Text("Login" , style: TextStyle(fontSize: 24 , color: Colors.white) , ),
                       ),
                       const SizedBox(height: 20.0,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           const Text("You want a new account?"),
                           MaterialButton(onPressed: (){ Navigator.pushNamed(context, "/signup");} , child: const Text("Sign Up"),),
                         ],
                       ),
              ],),),
            ),
            Positioned(
              left: 0,
              child: Image.asset("assets/images/main_top.png" , width: 111,)),
              Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset("assets/images/login_bottom.png" , width: 140,)),
                   ],),
         ),
      )
      );
  }}