import 'package:flutter/material.dart';
class Signup extends StatelessWidget {
  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
       SizedBox(
        width: double.infinity,
        height: double.infinity,
         child: Stack( 
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: SingleChildScrollView(       
                child: Column(children: [
                const SizedBox(height: 25,),
                     const Text("Sign Up" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
                      const SizedBox(height: 25,),
                      Image.asset("assets/images/signup.png", width: 230,),
                      const SizedBox(height: 35,),
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
                      const SizedBox(height: 35,),
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
                      const SizedBox(height: 35,),
                      MaterialButton(onPressed: (){
                        Navigator.pushNamed(context, "/login");
                      }, color: Colors.purple, minWidth: 420,
                       padding: const EdgeInsets.symmetric(horizontal: 86 , vertical: 13),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(27))
                        ,child: const Text("Sign Up" , style: TextStyle(fontSize: 24 , color: Colors.white) , ),
                       ),
                       const SizedBox(height: 15.0,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           const Text("You have an account?"),
                           MaterialButton(onPressed: (){ Navigator.pushNamed(context, "/login");} , child: const Text("Login"),),
                         ], ),
                       const SizedBox(height: 15.0,),
                       SizedBox(
                        width: 299,
                         child: Row(children: [
                          Expanded(child: Divider(thickness: 1,color: Colors.purple[900],)),
                          const Text("OR" , style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
                          Expanded(child: Divider(color: Colors.purple[900],thickness: 1,)),
                         ],),
                       ),
                       const SizedBox(height: 20.0,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.all(13),
                            decoration: BoxDecoration(shape: BoxShape.circle , 
                            border: Border.all(color: const Color(0xffe9e0f0) , width: 1)),
                            child: Image.asset("assets/images/twitter.png" , width: 30,color: Colors.purple,),
                           ),
                           Container(
                            padding: const EdgeInsets.all(13),
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(shape: BoxShape.circle , 
                            border: Border.all(color: const Color(0xffe9e0f0) , width: 1)),
                            child: Image.asset("assets/images/google-plus.png", width: 30,color: Colors.purple,),
                           ),
                           Container(
                            padding: const EdgeInsets.all(13),
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(shape: BoxShape.circle , 
                            border: Border.all(color: const Color(0xffe9e0f0) , width: 1)),
                            child: Image.asset("assets/images/facebook.png", width: 30,color: Colors.purple,),
                           ),],),
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
));}}