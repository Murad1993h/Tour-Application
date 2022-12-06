import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../const/app_colors.dart';


class VioletButton extends StatelessWidget {
  String title;
  final Function onAction;
  VioletButton(this.title,this.onAction);
  RxBool _value = false.obs;


  @override
  Widget build(BuildContext context) {
    return Obx(() =>InkWell(
      onTap: (){
        _value.value = true;
        onAction();

      },
      child: Container(
        height: 42.h,
        decoration: BoxDecoration(
          color: AppColors.violetColor,
          borderRadius: BorderRadius.all(Radius.circular(5.r)),
        ),
        child: _value == false? Center(
          child: Text("Create Account",style: TextStyle(
            fontWeight: FontWeight.w500,

            fontSize: 17.sp,
            color: Colors.white,

          ),
          ),
        ):Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Pleas Wait",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17.sp,
                  color: Colors.white
              ),),
           SizedBox(width: 10.w,),
           Transform.scale(scale: 0.4, child: CircularProgressIndicator(

           ),)
          ],
        ),

      ),
    ),
    );
  }
}
