import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:taskati/core/services/task_services.dart';
import 'package:taskati/features/home/widgets/home_app_bar.dart';
import 'package:taskati/features/home/widgets/task_Item.dart';
import 'package:taskati/features/home/widgets/task_filter_date.dart';
import 'package:taskati/features/home/widgets/tody_task_header.dart';

import '../../core/services/local/user_services.dart';
import '../add_task/add_task.dart';
import '../profile/models/user_model.dart';
import 'models/task_model.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _State();
}

class _State extends State<HomeScrean> {
  @override
  void initState() {

    final user = UserServices.getUSerData();
    if (user != null) {
      debugPrint("User loaded: ${user.name}");
    } else {
      debugPrint("No user found yet.");
      TasksServices.getAllTasks();
    super.initState();
  }}
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
                 final result= await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddTask()),
                  );
                  if(result== true){
                    setState(() {});
                   TasksServices.getAllTasks();
                  }
                }

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
