import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/thems/app_colors.dart';

class TaskFilterDate extends StatelessWidget {
  const TaskFilterDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DataFilterItem(isActive: true),
        SizedBox(width: 5.w),
        DataFilterItem(),
        SizedBox(width: 5.w),
        DataFilterItem(),
        SizedBox(width: 5.w),
        DataFilterItem(),
      ],
    );
  }
}

class DataFilterItem extends StatelessWidget {
  final bool isActive;
  const DataFilterItem({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 13.h),
        decoration: BoxDecoration(
          color: isActive ? AppColors.mianColors : Colors.transparent,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            Text(
              "Oct",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                color: isActive ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              "30",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                color: isActive ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              "Mon",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                color: isActive ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
