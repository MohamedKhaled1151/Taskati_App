import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taskati/core/thems/app_colors.dart';
import 'package:taskati/features/add_task/widgets/text_form_filed_with_title.dart';
import 'package:taskati/features/profile/widgets/custom_bottom.dart';

class ProfileScrean extends StatefulWidget {
  const ProfileScrean({super.key});

  @override
  State<ProfileScrean> createState() => _ProfileScreanState();
}

class _ProfileScreanState extends State<ProfileScrean> {
  XFile? image;

  selectImageFormGallery() async {
    final ImagePicker picker = ImagePicker();
    image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  selectImageFormCamera() async {
    final ImagePicker picker = ImagePicker();
    image = await picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Icon(Icons.light_mode)]),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: EdgeInsets.all(16.0.r),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                selectImageFormCamera();
                              },
                              child: CustomBottom(title: "Open Camera"),
                            ),
                            SizedBox(height: 10.h),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                selectImageFormGallery();
                              },
                              child: CustomBottom(title: "Open Gallery"),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
                child: CircleAvatar(
                  radius: 60.r,
                  backgroundImage: image == null ? const AssetImage("assets/images/IMG-20250501-WA0001.jpg")
                  as ImageProvider
                      : FileImage(File(image!.path)),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      Icons.camera_alt,
                      color: AppColors.mianColors,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Divider(
                color: AppColors.mianColors,
                height: 10,
                thickness: 2,
                endIndent: 20,
                indent: 20,
              ),
              InkWell(
                onTap: (){
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return IntrinsicHeight(
                          child: Padding(
                            padding:  EdgeInsets.only(bottom: MediaQuery.of (context).viewInsets.bottom,
                            top: 10.h,right: 10.w,left: 10.w),

                            child: Column(
                              children: [
                                TextFormFiledWithTitle(
                                    title: "Name",
                                    hintText: "Please Enter your Name"),
                                SizedBox(height: 10.h,),
                                InkWell(
                                  child: CustomBottom(title: "change Name "),),
                            
                              ],
                            ),
                          ),
                        );
                      }
                  );
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        " Name ",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          color: AppColors.mianColors,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.mianColors),
                      ),
                      child: Icon(
                        Icons.edit,
                        color: AppColors.mianColors,
                        size: 30.r,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
