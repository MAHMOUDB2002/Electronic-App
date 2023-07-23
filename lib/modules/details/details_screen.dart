import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/product/product_model.dart';
import '../home/home_screen.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({required this.productM2});
  final ProductModel productM2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor('#333742')),
      appBar: AppBar(
        title: Text(
          '${productM2.ProductType}',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(hexColor('#333742')),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.grey.shade400,
          ),
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.favorite_border,
              color: Colors.grey.shade400,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${productM2.ProductName}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0.sp,
                    color: Colors.white)),
            SizedBox(
              height: 5.0.h,
            ),
            Text(
              '${productM2.ProductName}',
              style: TextStyle(color: Colors.grey.shade400),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.remove_red_eye, color: Colors.grey.shade400),
                        SizedBox(
                          width: 3.0.w,
                        ),
                        Text(
                          '1.5 K',
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                        SizedBox(
                          width: 15.0.w,
                        ),
                        Icon(Icons.favorite, color: Colors.grey.shade400),
                        SizedBox(
                          width: 3.0.w,
                        ),
                        Text(
                          '212',
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                        SizedBox(
                          width: 15.0.w,
                        ),
                        Icon(Icons.shopping_bag, color: Colors.grey.shade400),
                        SizedBox(
                          width: 3.0.w,
                        ),
                        Text(
                          '120',
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                        // SizedBox(
                        //   width: 120.0.w,
                        // ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      width: 25.0.w,
                      height: 25.0.h,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 2, color: Colors.grey.shade400),
                          color: productM2.ProductColor1,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 2, color: Colors.grey.shade400),
                          color: productM2.ProductColor2,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      width: 25.0.w,
                      height: 25.0.h,
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          border:
                              Border.all(width: 2, color: Colors.grey.shade400),
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      width: 25.0.w,
                      height: 25.0.h,
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Image(
                fit: BoxFit.contain,
                image: AssetImage('${productM2.ProductImage}'),
                height: 391.0.h,
                width: 391.0.w,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 2, color: Colors.grey.shade400),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  width: 22.0.w,
                  height: 6.0.h,
                ),
                SizedBox(
                  width: 3.0.w,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.grey.shade400),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  width: 8.0.w,
                  height: 6.0.w,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
