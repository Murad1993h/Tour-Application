import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:tour/ui/styles/style.dart';
import 'package:get/get.dart';


class UserForm extends StatelessWidget {

  TextEditingController _namrController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressrController = TextEditingController();

  Rx<TextEditingController> _dobController = TextEditingController().obs;
 Rx <DateTime> selecteDate = DateTime.now().obs;

  _selectDate(BuildContext context) async{
    final selected = await showDateRangePicker(
        context: context,
       //initialDate: selecteDate.valu,
      //  initialDateRange: selecteDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(2026),);

    if(selecteDate!=null && selected != selecteDate){
      _dobController.value.text =
      " ${selecteDate}-${selecteDate}";
    }

   // if(selecteDate!=null && selecte !=selecteDate){
      //_dobController.text = "${selecteDate.day} - ${selected.year}";
   // }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w,top:20.h ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tell Us More About You.",
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w500,
                    //color:AppColor.violetColor,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "We will not share your information outside this application.",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                   // color:AppColor.violetColor,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),


                Formfield(_namrController, TextInputType.name, 'name'),
                Formfield(_phoneController, TextInputType.number, 'numbar'),
                Formfield(_namrController, TextInputType.text, 'address'),
                Obx(()=>TextFormField(
                    controller: _dobController.value,
                    readOnly: true,
                    //keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "Date of Birth,",
                      hintStyle: TextStyle(
                        fontSize: 15.sp,
                      ),
                      suffixIcon: IconButton(
                        onPressed: ()=>_selectDate(context),
                        icon: Icon(Icons.calendar_month_rounded),),
                    )
                ),),



              ],
            ),
          ),
        ),
      ),



    );
  }
}
Widget Formfield(controller,inputType,hint){
  return TextFormField(
    controller: controller,
    keyboardType: inputType,
    decoration: AppStyles().textFildDecoration(hint),

  );
}