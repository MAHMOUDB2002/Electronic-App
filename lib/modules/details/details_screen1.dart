import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/product/product_model.dart';
import '../home/home_screen.dart';

class DetailsScreen1 extends StatefulWidget {
  DetailsScreen1({required this.productM});
  final ProductModel productM;

  @override
  State<DetailsScreen1> createState() => _DetailsScreen1State();
}

class _DetailsScreen1State extends State<DetailsScreen1> {
  bool isFavourate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor('#333742')),
      appBar: AppBar(
        title: Text(
          '${widget.productM.ProductType}',
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
            onPressed: () {
              // Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.share_outlined,
              color: Colors.grey.shade400,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
                child: Text('${widget.productM.ProductName}',
                    // PULSE 3D\nWireless Headset
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0.sp,
                        color: Colors.white)),
              ),
              SizedBox(
                height: 50.0.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(hexColor('#454D5A')),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.remove_red_eye,
                                      color: Colors.grey.shade400),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    '1.5 K',
                                    style:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                  SizedBox(
                                    height: 15.0.h,
                                  ),
                                  Icon(Icons.favorite,
                                      color: Colors.grey.shade400),
                                  SizedBox(
                                    width: 3.0.w,
                                  ),
                                  Text(
                                    '212',
                                    style:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                  SizedBox(
                                    height: 15.0.h,
                                  ),
                                  Icon(Icons.shopping_bag,
                                      color: Colors.grey.shade400),
                                  SizedBox(
                                    width: 3.0.w,
                                  ),
                                  Text(
                                    '120',
                                    style:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                ],
                              ),
                              Image(
                                image: AssetImage(
                                    '${widget.productM.ProductImage}'),
                                height: 267.0.h,
                                width: 267.0.w,
                              ),
                              Spacer(),
                              // SizedBox(width: 15.0),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0))),
                                width: 46.0.w,
                                height: 25.0.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '4.6',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      color: Colors.amber,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 2, color: Colors.grey.shade400),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                width: 22.0.w,
                                height: 6.0.h,
                              ),
                              SizedBox(
                                width: 3.0.w,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.w,
                                        color: Colors.grey.shade400),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                width: 8.0.w,
                                height: 6.0.h,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.0.h,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      '${widget.productM.ProductOriginalPrice}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0.sp,
                                        color: Colors.white,
                                        decorationColor: Colors.white,
                                        decoration: TextDecoration.lineThrough,
                                      )),
                                  Text(
                                      '${widget.productM.ProductDiscountPrice}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 33.0.sp,
                                          color: Colors.white)),
                                ],
                              ),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade900,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0))),
                                width: 53.0.w,
                                height: 29.0.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '24%',
                                      style: TextStyle(
                                          color: Colors.green[300],
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0.h,
                          ),
                          Row(
                            children: [
                              Icon(Icons.car_crash_rounded,
                                  color: Colors.grey.shade400),
                              SizedBox(
                                width: 10.0.w,
                              ),
                              Text(
                                'Prices incl. VAT',
                                style: TextStyle(color: Colors.grey.shade400),
                              ),
                              SizedBox(
                                width: 15.0.w,
                              ),
                              Text('plus shipping costs',
                                  style:
                                      TextStyle(color: Colors.grey.shade400)),
                            ],
                          ),
                          SizedBox(
                            height: 10.0.h,
                          ),
                          Text(
                            'Prices incl. VAT kffkgfkg eureureu fufgufg \n ririgrgufhdhfdhfhdfd.',
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                          SizedBox(
                            height: 10.0.h,
                          ),
                          Text(
                            'Choose Color',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 15.0.sp),
                          ),
                          SizedBox(
                            height: 10.0.h,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 25.0.w,
                                height: 25.0.h,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.w, color: Colors.white),
                                    color: widget.productM.ProductColor1,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6.0))),
                              ),
                              SizedBox(
                                width: 10.0.w,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2.w, color: Colors.white),
                                    color: widget.productM.ProductColor2,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6.0))),
                                width: 25.0.w,
                                height: 25.0.h,
                              ),
                              SizedBox(
                                width: 10.0.w,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    border: Border.all(
                                        width: 2.w, color: Colors.white),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6.0))),
                                width: 25.0.w,
                                height: 25.0.w,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 96.0,
        decoration: BoxDecoration(
            color: Color(hexColor('##333742')),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(hexColor('#454D5A')),
                    borderRadius: BorderRadius.circular(10.0)),
                width: 55.0,
                height: 50.0,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isFavourate = !isFavourate;
                    });
                  },
                  icon: Icon(
                    isFavourate ? Icons.favorite : Icons.favorite_border,
                    color: Colors.white,
                  ),
                )),
            SizedBox(
              width: 5.0,
            ),
            Container(
              width: 270.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Color(hexColor('#454D5A')),
                  borderRadius: BorderRadius.circular(10.0)),
              child: TextButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(hexColor('#454D5A'))),
                  onPressed: null,
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                  label: Text(
                    'ADD TO CART',
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
