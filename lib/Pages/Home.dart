import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF2c445b),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 152,
              child: CircleAvatar(
                radius: 150, // Image radius
                backgroundImage: AssetImage("assets/images/tharwat.png"),
              ),
            ),
            const Text("Tharwat Samy" , style: TextStyle(color: Colors.white,
            fontFamily: "Pacifico",
            fontSize: 35,
            fontWeight: FontWeight.bold
            ),),
              const Text("FLUTTER DEVELOPER" , style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold
            ),
            ),
            Divider(indent: 60, endIndent: 60,),
           Padding(
             padding: const EdgeInsets.all(16),
             child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(children: [
                Spacer(flex: 1,),
               Icon(Icons.phone , size: 32, color: Color(0xFF2c445b),),
               Spacer(flex: 1,),
               Text("(+20) 1050081071" , style: TextStyle(fontSize: 24),),
               Spacer(flex: 3,)
             ],)),
           ),
           Padding(
             padding: const EdgeInsets.all(16),
             child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children:  [
                  Spacer(flex: 1,),
                 Icon(Icons.email , size: 32, color: Color(0xFF2c445b),),
                 Spacer(flex: 1,),
                 Text("abdelhamidsalah222@gmail.com" , style: TextStyle(fontSize: 16),),
                 Spacer(flex: 3,)
                             ],),
              )),
          
          
        ]),
      ),
    );
  }
}