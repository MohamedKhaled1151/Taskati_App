import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/core/thems/app_colors.dart';
import 'package:taskati/features/add_task/widgets/select_color.dart';
import 'package:taskati/features/add_task/widgets/text_form_filed_with_titlt.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 20.w,right: 20.w,bottom:30.h ),
        height: 50.h,
        decoration: BoxDecoration(
          color: AppColors.mianColors,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Text("Create Task",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.sp,
          color: Colors.white,
        ),),
      ) ,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.mianColors,
          weight: 50.sp,
        ),
        centerTitle: true,
        title: Text(
          "Add Task",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.mianColors,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: Column(spacing:14.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormFiledWithTitlt(
                  title: "Title",
                  hintText: "Enter title",
                ),
                TextFormFiledWithTitlt(
                  title: "Description",
                  hintText: "Enter description",
                  maxLine: 5,
                ),
                TextFormFiledWithTitlt(
                  title: "Date",
                  hintText: "12-5-2020",
                  suffixIcon: Icon(Icons.date_range),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormFiledWithTitlt(
                        title: "Start Time",
                        hintText: "09:08 PM",
                        suffixIcon: Icon(Icons.access_time),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: TextFormFiledWithTitlt(
                        title: "End Time",
                        hintText: "09:08 PM",
                        suffixIcon: Icon(Icons.access_time),
                      ),
                    ),
                  ],
                ),
                SelectColor(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
