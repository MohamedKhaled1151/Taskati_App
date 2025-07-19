

 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/thems/app_colors.dart';

class TodyTaskHeader extends StatelessWidget {
   const TodyTaskHeader({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("October,30,2020 \n Today",
            style:TextStyle(
           fontSize:20,
           fontWeight: FontWeight.bold
            ) ,),
          Container(
            padding: EdgeInsets.symmetric(horizontal:10.w,vertical: 11.h ),
            decoration: BoxDecoration(
             color: AppColors.mianColors,
              borderRadius:BorderRadius.circular(12.r)

            ),
            child: Row(
              children: [
                Icon(Icons.add,color: Colors.white,),
                Text("Add Task",style:
                TextStyle(
                fontWeight: FontWeight.bold,
                fontSize:15.sp,
                color: Colors.white

                ),)
              ],
            ),
          )
        ],
     );
   }
 }
 