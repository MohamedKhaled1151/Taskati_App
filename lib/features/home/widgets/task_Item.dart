

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/features/home/models/taskmodel.dart';

import '../../../core/thems/app_colors.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key, });

  @override
  Widget build(BuildContext context) {
    return TaskModel.tasks.isEmpty?
       Column(
        children: [
            Image.asset("assets/images/empty.png"),
          Text(" You Don't have tasks",style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
             color: Colors.grey
          ),),
        ],
      )
    : Expanded(
      child: ListView.separated(
        separatorBuilder:(context,index)=>SizedBox(height: 10.h,) ,
        itemCount: TaskModel.tasks.length,
          itemBuilder:(context,index){
            return Dismissible(
              key: UniqueKey(),
                child: Item(taskModel: TaskModel.tasks[index],
                  
                ));
          } ),
    );
  }
}
class Item extends StatelessWidget {
  final TaskModel taskModel;

  const Item({super.key, required this.taskModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:25.w,vertical:12.h  ),
      decoration: BoxDecoration(
          color: taskModel.taskColors,
          borderRadius:BorderRadius.circular(12.r)                ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(taskModel.title,style:
                  TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  )
                    ,),
                  SizedBox(height: 10.h,),
                  Row(children: [
                    Icon(Icons.alarm,color: Colors.white,),
                    SizedBox(width: 10.w,),
                    Text("${taskModel.startTime} - ${taskModel.endTime}" ,style: TextStyle(
                        fontSize:20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)
                  ]),
                  SizedBox(height: 10.h,),
                  Text(taskModel.des,style:
                  TextStyle(
                      fontSize:17.sp,
                      fontWeight: FontWeight.w600,
                      color:Colors.white
                  )
                    ,)
                ],
              ),
            ),
            VerticalDivider(
              color: Colors.white,
              width:15.w ,
              thickness:2,
              indent:5 ,
            ),
            RotatedBox(quarterTurns:  1,
              child:  Text(taskModel.status,style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                  color: Colors.white
              ),),
            )
          ],
        ),
      ),
    );
  }
}

