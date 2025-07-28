

import 'package:flutter/material.dart';

class TaskModel{
  final String title;
  final String startTime;
  final String endTime;
   String status;
  final String des;
  final Color taskColors;

  TaskModel({required this.title,
    required this.startTime, required this.endTime,
    required this.status,
    required this.des,
  required this.taskColors
  });
   static String timeFormat(context, TimeOfDay time){
     final localizations= MaterialLocalizations.of(context);
     final formattedTimeOfDay= localizations.formatTimeOfDay(time);
     return formattedTimeOfDay.toString();
   }
 static List <TaskModel>tasks=[
  //
  ];
}