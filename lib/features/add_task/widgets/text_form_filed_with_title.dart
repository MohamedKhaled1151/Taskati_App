import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/thems/app_colors.dart';

class TextFormFiledWithTitle extends StatelessWidget {
  final String title;
  final String hintText;
  final int maxLine ;
  final Icon?suffixIcon;
  final void Function()? onTap;
   final String? Function(String?)? validator;
  const TextFormFiledWithTitle({super.key,
    required this.title,
    required this.hintText,
    this.maxLine=1,
    this.suffixIcon,
    this.validator, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.sp,
        ),),
        SizedBox(height: 10.h,),
        TextFormField(
          onTap: onTap,
          readOnly: onTap!=null,
          decoration: InputDecoration(
            suffixIcon:suffixIcon,
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            ),
            enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(12.r),
            ),
            focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.mianColors, width: 2),
            borderRadius: BorderRadius.circular(12.r),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
            fontSize: 20.sp,
            ),
          ),
          maxLines: maxLine,
          validator:validator,

        ),
      ],
    );
  }
}
