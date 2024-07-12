import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/strings_manager.dart';

class CustomField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Expanded(
           flex:5,
           child: TextFormField(
            style: TextStyle(
              fontSize: 5.sp
            ),

            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(40.sp),borderSide: BorderSide(width: 1,color: Theme.of(context).primaryColor,)),
              enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(40.sp),borderSide: BorderSide(width: 1,color: Theme.of(context).primaryColor,)),
              focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(40.sp),borderSide: BorderSide(width: 1,color:Theme.of(context).primaryColor,)),
                label: Row(children: [
                  SizedBox(width: 10.w,),
                  Image.asset(assetManagerr.search,height: 25.h,width: 25.w,),
                  SizedBox(width: 24.w,),
                  Text("${StringsManger.search}",style:Theme.of(context).textTheme.bodySmall ,),
              ],),

            ),
                   ),
         ),
        Expanded(
             child: Image.asset(assetManagerr.shopping,height: 25.h,width: 25.w,),
        )
      ],
    );
  }
}
