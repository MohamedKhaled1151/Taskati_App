

   import 'package:flutter/material.dart';

class SplashScrean extends StatelessWidget {
     const SplashScrean({super.key});

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset("assets/images/Animation - 1751837012840.gif"),
               SizedBox(height:20),
               Text("Taskati",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),)

             ],
           ),
         ) ,
       );
     }
   }
