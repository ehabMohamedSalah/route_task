import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:route_task/core/utils/assets_manager.dart';

class ProductWidget extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Container(
      width: 191.w,
      height: 128.h,
      decoration: BoxDecoration(
        border: Border.all(width: 2.w, color: Color(0xff004182)),
        borderRadius: BorderRadius.all(Radius.circular(15.sp)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.sp),
                    topLeft: Radius.circular(15.sp)),
                child: Image.asset("assets/images/productDumy.png"),
              ),
              SvgPicture.asset(
                assetManagerr.love,
                height: 30.h,
                width: 30.w,
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            "Nike Air Jordon Nike shoes flexible for wo",
            maxLines: 2,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
            Row(
            children: [
              Text("EGP 1500"),
              SizedBox(
                width: 16.w,
              ),
              Text(
                "800 EGP",
                style: TextStyle(decoration: TextDecoration.lineThrough),
              )
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(children: [
            Text("Review(4.6)"),
            SvgPicture.asset(assetManagerr.star,height: 30.h,width: 30.w,),

            Spacer(),
            SvgPicture.asset(assetManagerr.plus,height: 30.h,width: 30.w,),

           ]),
        ],
      ),
    );
  }
}
