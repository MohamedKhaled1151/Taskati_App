

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/features/profile/profile_screan.dart';

import '../../../core/thems/app_colors.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello,Mohamed",style:
            TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.mianColors
            ),),
            Text("Have A Nice Day",style:
            TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
                color:Colors.black54
            ),),
          ],
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScrean()));
          },
          child: CircleAvatar(
            radius:35.r,
            backgroundImage:
            AssetImage("assets/images/IMG-20250501-WA0001.jpg"),

          ),
        )
      ],
    );
  }
}
