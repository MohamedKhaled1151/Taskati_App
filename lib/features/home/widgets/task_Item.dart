

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/thems/app_colors.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder:(context,index)=>SizedBox(height: 10.h,) ,
        itemCount: 3,
          itemBuilder:(context,index){
            return Dismissible(
              key: UniqueKey(),
                child: Item());
          } ),
    );
  }
}
class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:25.w,vertical:12.h  ),
      decoration: BoxDecoration(
          color: AppColors.mianColors,
          borderRadius:BorderRadius.circular(12.r)                ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Flutter Task -1",style:
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
                    Text("02:25 am",style: TextStyle(
                        fontSize:20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)
                  ]),
                  SizedBox(height: 10.h,),
                  Text("I will do this task",style:
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
              child:  Text("ToDo",style: TextStyle(
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

