import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/core/services/local/user_services.dart';
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
    final user =UserServices.getUSerData();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
               "Hello,${user?.name ?? " "} ",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.mianColors,
              ),
            ),
            Text(
              "Have A Nice Day",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScrean()),
            ).then((_){
              setState(() {

              });
            });
          },
          child: CircleAvatar(
            radius: 35.r,
            backgroundImage: (user != null && user.image.isNotEmpty)
                ? FileImage(File(user.image))
                : null,
            child: user == null || user.image.isEmpty
                ? Icon(Icons.person, size: 30.r, color: Colors.white)
                : null,
    ),
          ),

      ],
    );
  }
}
