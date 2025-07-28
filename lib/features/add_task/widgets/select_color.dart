


 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectColor extends StatefulWidget {
  final Function(Color) onChange ;
   const SelectColor({super.key, required this.onChange,  });

  @override
  State<SelectColor> createState() => _SelectColorState();
}

class _SelectColorState extends State<SelectColor> {
   List<Color> colors=[
     Colors.black,
     Colors.orange,
     Colors.blue,
     Colors.red,
     Colors.deepPurple,
     Colors.green,
     Colors.grey
   ];
      int activeIndex=0;


   @override
   Widget build(BuildContext context) {
     return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text("Color",style: TextStyle(
           fontSize:18.sp,
           fontWeight: FontWeight.bold,
           color:Colors.black
         ),),
         SizedBox(height: 10.h,),
       SizedBox( height: 30.h,
         child: ListView.separated( scrollDirection: Axis.horizontal,
           itemCount:colors.length,
         itemBuilder:(context,index){
         return ColorItem(
        backgroundColor: colors[index],
        isActive:index==activeIndex ,
         onTap: (){
            if(activeIndex!=index){
              setState(() {
                activeIndex=index;
                widget.onChange(colors[activeIndex]);
              });
            }
           },
         );}, separatorBuilder: (context,index)=>SizedBox(width: 5.w,),),
       )
       ],
     );
   }
}
 class ColorItem extends StatelessWidget {
   final Color? backgroundColor;
   final bool isActive;
   final void Function()? onTap;

   const ColorItem({super.key, this.backgroundColor, this.isActive=false, this.onTap});

   @override
   Widget build(BuildContext context) {
     return InkWell(
       onTap:onTap ,
       child: CircleAvatar(
         backgroundColor:backgroundColor,
         radius:20.r,
         child: isActive? Icon(Icons.check, color:Colors.white,):null
       ),
     );
   }
 }
