import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/features/home/widgets/home_app_bar.dart';
import 'package:taskati/features/home/widgets/task_Item.dart';
import 'package:taskati/features/home/widgets/task_filter_date.dart';
import 'package:taskati/features/home/widgets/tody_task_header.dart';

import '../add_task/add_task.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _State();
}

class _State extends State<HomeScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              HomeAppBar(),
              SizedBox(height: 10.h),
              TodyTaskHeader(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddTask()),
                  );
                  setState(() {});
                },
              ),
              SizedBox(height: 10.h),
              TaskFilterDate(),
              SizedBox(height: 10.h),
              TaskItem(),
            ],
          ),
        ),
      ),
    );
  }
}
