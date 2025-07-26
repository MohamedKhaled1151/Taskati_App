import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/core/thems/app_colors.dart';
import 'package:taskati/features/add_task/widgets/select_color.dart';
import 'package:taskati/features/add_task/widgets/text_form_filed_with_title.dart';
import 'package:taskati/features/home/models/taskmodel.dart';

class AddTask extends StatelessWidget {
   AddTask({super.key});
   var  validationKey=GlobalKey<FormState>();
  var titleController=TextEditingController();
  var descriptionController=TextEditingController();
   TimeOfDay ? startTime;
   TimeOfDay ? endTime;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Padding(
        padding:EdgeInsets.only(left:20.w,right: 20.w ,bottom: 30.h),
         child: ElevatedButton(
           style: ElevatedButton.styleFrom(
             backgroundColor: AppColors.mianColors,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(12.r)
             )
           ) ,
           onPressed: (){
            if ( validationKey.currentState?.validate()??false)
            {
              TaskModel.tasks.add(TaskModel(
                title: titleController.text,
                startTime:"${startTime?.hour } : ${startTime?.minute}",
                endTime: "${endTime?.hour } : ${endTime?.minute}",
                status: "To do ",
                des: descriptionController.text,
                taskColors: AppColors.mianColors));
            }
           }, child: Padding(
          padding:const EdgeInsets.all(8),
          child: Text("Create Task",style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
        )),
      ),
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
            child: Form(
              key: validationKey,
              child: Column(
                spacing:14.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormFiledWithTitle(
                    controller:titleController ,
                    title: "Title",
                    hintText: "Enter title",
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Title is required ";
                      }
                    },
                  ),
                  TextFormFiledWithTitle(
                    controller: descriptionController,
                    title: "Description",
                    hintText: "Enter description",
                    maxLine: 5,
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "description is required ";
                      }
                    },
                  ),
                  TextFormFiledWithTitle(
                    onTap: (){
                      showDatePicker(context: context, firstDate: DateTime.now(), lastDate:DateTime(2030));
                    },
                    title: "Date",
                    hintText: "12-5-2020",
                    suffixIcon: Icon(Icons.date_range),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormFiledWithTitle(
                          onTap: (){
                            showTimePicker(context: context, initialTime:TimeOfDay.now()).then((v){
                               startTime=v;
                            });
                          },
                          title: "Start Time",
                          hintText: "09:08 PM",
                          suffixIcon: Icon(Icons.access_time),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: TextFormFiledWithTitle(
                          onTap: (){
                            showTimePicker(context: context, initialTime:TimeOfDay.now()).then((v){
                              endTime=v;
                            });
                          },
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
      ),
    );
  }
}
