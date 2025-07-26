

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/core/thems/app_colors.dart';

class ProfileScrean extends StatelessWidget {
  const ProfileScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.light_mode)],
      ),
      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal:20.w, ),
        child: Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60.r,
                backgroundImage: AssetImage("assets/images/IMG-20250501-WA0001.jpg"),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(Icons.camera_alt,color: AppColors.mianColors,)),
              ),
              SizedBox(height: 15.h,),
              Divider(color:AppColors.mianColors,height: 10,thickness: 2,endIndent: 20,indent: 20,),
              Row(
               children: [
                 Expanded(
                   child: Text(" data ",
                     overflow: TextOverflow.ellipsis,
                     maxLines: 3,
                     style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 20.sp,
                     color: AppColors.mianColors,
                   ),),
                 ),
                 Container(decoration:BoxDecoration(
                     shape: BoxShape.circle,
                   border: Border.all(color: AppColors.mianColors),

                 ) ,
                     child: Icon(Icons.edit,color: AppColors.mianColors,size: 30.r,))
               ],
              ),
            ],

          ),
        ),
      ) ,
    );
  }
}
