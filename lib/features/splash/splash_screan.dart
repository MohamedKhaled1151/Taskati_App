

   import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
               SizedBox(height:20.h),
               Text("Taskati",
                 style: TextStyle
                   (fontSize: 20.sp,fontWeight: FontWeight.bold,),),
               SizedBox(height:15.h),
               Text("Manage your daily tasks easily and stay productive with Taskati",
                 style: TextStyle
                   (fontSize: 10.sp,fontWeight: FontWeight.bold,
                 color:Colors.black54),)


             ],
           ),
         ) ,
       );
     }
   }
