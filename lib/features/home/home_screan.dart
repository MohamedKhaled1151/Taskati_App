

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/thems/app_colors.dart';

class  HomeScrean extends StatefulWidget {
  const HomeScrean ({super.key});

  @override
  State< HomeScrean> createState() => _State();

}

class _State extends State< HomeScrean> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
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
              CircleAvatar(
               radius:35.r,
                backgroundImage: AssetImage("assets/images/IMG-20250501-WA0001.jpg"),

              )
              ],
            )
          ],
        )),
    );
  }
}


