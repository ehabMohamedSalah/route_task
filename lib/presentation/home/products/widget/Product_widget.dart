import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../Domain/entity/product_entity.dart';

class ProductWidget extends StatelessWidget {
  ProductEntity product;
  ProductWidget(this.product);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 191.w,
      decoration: BoxDecoration(
        border: Border.all(width: 2.w, color: Color(0xff004182)),
        borderRadius: BorderRadius.all(Radius.circular(15.sp)),
      ),
      child: Padding(
        padding:   REdgeInsets.only(left: 10,right: 3),
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
                  child: CachedNetworkImage(
                    width: 191.w,
                    height: 128.h,
                    fit: BoxFit.cover,
                    imageUrl: product.images?[0] ?? "" ,
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                SvgPicture.asset(
                  "assets/images/like.svg",
                  height: 60.h,
                  width: 60.w,
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              "${product.title ?? ""}\n",
              maxLines: 1,
              style:  Theme.of(context).textTheme.labelMedium,
            ),

            Text(
              "${product.description ?? ""}\n",
              maxLines: 1,
              style:Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Text(
                  "EGP ${getPriceAfterSale().toStringAsFixed(2)}",
                  overflow: TextOverflow.clip,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(

                  product.price?.toStringAsFixed(2) ?? "",
                  overflow: TextOverflow.clip,

                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(children: [
              Text("Review (${product.rating})",style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 14),),
              SizedBox(width: 3,),
              SvgPicture.asset("assets/images/star_.svg"),
              Spacer(),
            SvgPicture.asset(
              color: Theme.of(context).primaryColor,
            "assets/images/plus.svg",
            height: 30.h,
            width: 30.w,
            ),
             ]),
          ],
        ),
      ),
    );
  }
  double getPriceAfterSale() {
    return product.price! *
        (1 - (product.discountPercentage! / 100));
  }
}
