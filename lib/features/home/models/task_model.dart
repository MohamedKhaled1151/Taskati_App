import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
 part 'task_model.g.dart';
@HiveType(typeId: 0)
class TaskModel  extends HiveObject{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String startTime;
  @HiveField(2)
  final String endTime;
  @HiveField(3)
   String status;
  @HiveField(4)
  final String des;
  @HiveField(5)
  final Color taskColors;

  TaskModel({
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.status,
    required this.des,
    required this.taskColors,
  });
  static String timeFormat(context, TimeOfDay time) {
    final localizations = MaterialLocalizations.of(context);
    final formattedTimeOfDay = localizations.formatTimeOfDay(time);
    return formattedTimeOfDay.toString();
  }

  static List<TaskModel> tasks = [
    //
  ];}
