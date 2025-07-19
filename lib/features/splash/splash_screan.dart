

   import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati/features/home/home_screan.dart';

class SplashScrean extends StatefulWidget {
     const SplashScrean({super.key});

  @override
  State<SplashScrean> createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {
   @override
   void initState() {
    super.initState();
     Future.delayed(Duration(seconds: 5),(){Navigator.pushAndRemoveUntil(context,
       MaterialPageRoute(builder: (context) => HomeScrean()),(R)=>false);});
  }
     @override
     Widget build(BuildContext context) {
       return Scaffold(
       body: Center(
         child: Column( mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset("assets/images/tasks.gif"),
             SizedBox(height:5.h ,),
             Text("Taskati",
               style: TextStyle(
                 fontSize: 18.sp,
                 fontWeight: FontWeight.bold,
                 color: Colors.black),),
             SizedBox(height: 5.h,),
             Text("Get organized and stay productive with Taskati",
             style: TextStyle(
               color:Colors.black54,
               fontWeight: FontWeight.w600,
               fontSize: 13.sp
             ),)

           ],
         ),
       )

       );
     }
}
