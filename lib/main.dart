import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:taskati/features/home/models/task_model.dart';
import 'package:taskati/taskati_app.dart';

import 'core/utils/app_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>(AppConstants.tasksBoxId);
  runApp(TaskatiApp());
}
