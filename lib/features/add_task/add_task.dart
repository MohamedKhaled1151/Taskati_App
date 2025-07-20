

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/core/thems/app_colors.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         iconTheme:IconThemeData(
          color: AppColors.mianColors ,
           weight:50.sp,
         ),
        centerTitle: true,
        title: Text("Add Task ",style:TextStyle(
          fontSize:20.sp,
          fontWeight:FontWeight.bold,
          color: AppColors.mianColors
        ) ,),
       ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.mianColors, width: 2),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                hintText: "enter title",
                hintStyle: TextStyle(
                  fontSize: 20.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
