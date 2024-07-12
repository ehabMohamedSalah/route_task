import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:route_task/presentation/home/products/widget/Product_widget.dart';
 import 'package:route_task/presentation/home/products/widget/custom_filed.dart';

import '../../../core/utils/assets_manager.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                    title: Image.asset("assets/images/route.png"),
               ),
      body: Padding(
        padding:   REdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomField(),
        Expanded(
          child: GridView.builder(

            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => ProductWidget( ),
            itemCount: 2,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.h,
            ),
          ),
        ),

      ],
        ),
      ),
    );
  }
}
