


 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectColor extends StatelessWidget {
  final Color ?selectColor;
   const SelectColor({super.key,  this.selectColor});

   @override
   Widget build(BuildContext context) {
     return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text("Color",style: TextStyle(
           fontSize:18.sp,
           fontWeight: FontWeight.bold,
           color:Colors.black
         ),),
         SizedBox(height: 10.h,),
       SizedBox( height: 30.h,
         child: ListView.separated
         (   scrollDirection: Axis.horizontal,
           itemCount:3,
         itemBuilder:(context,index){
         return CircleAvatar(
           backgroundColor:Colors.black,
           radius:20.r,
           child: Icon(
             Icons.check,
             color:Colors.white,
           ),
         );}, separatorBuilder: (context,index)=>SizedBox(width: 5.w,),
         ),
       )
       ],
     );
   }
 }
