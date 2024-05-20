import 'package:flutter/material.dart';
class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SizedBox(
        height: double.infinity,
        width: double.infinity,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                width: double.infinity,
                child: SingleChildScrollView(           
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 35,),
                      const Text("Welcome" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
                      const SizedBox(height: 35,),   
                      Image.asset("assets/images/chat.png", width: 300,),
                      const SizedBox(height: 45,),
                      MaterialButton(onPressed: (){
                        Navigator.pushNamed(context, "/login");
                      }, color: Colors.purple,minWidth: 400,
                       padding: const EdgeInsets.symmetric(horizontal: 86 , vertical: 13),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(27))
                        ,child: const Text("Login" , style: TextStyle(fontSize: 24 , color: Colors.white) , ),
                       ),
                      const SizedBox(height: 22.0,),
                      MaterialButton(onPressed: (){
                        Navigator.pushNamed(context, "/signup");
                      },color: Colors.purple[100],minWidth: 400,
                      padding: const EdgeInsets.symmetric(horizontal: 77 , vertical: 13),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(27))
                         , child: const Text("Sign Up" , style: TextStyle(fontSize: 24)), )
                    ],
                  ),
                ), ),
              Positioned(
                left: 0,
                child:
                 Image.asset("assets/images/main_top.png" , width: 111,)),
                 Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset("assets/images/main_bottom.png" , width: 111,))
            ],
          ),
        ),
      ),);   
  }
}