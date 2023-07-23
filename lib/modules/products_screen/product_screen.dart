import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/product/product_model.dart';
import '../details/details_screen.dart';
import '../home/home_screen.dart';

class ProductScreen extends StatefulWidget {
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<String> items = [
    "All",
    "PS5",
    "PS4",
    "Xbox One",
    "PS3",
    "PS2",
    "PS1",
  ];

  int index = 0;

  List<ProductModel> products = [
    ProductModel(
      id: 1,
      ProductType: "Sony",
      ProductName: 'Playstation 5',
      ProductOriginalPrice: '\$999.00',
      ProductDiscountPrice: '\$890.00',
      ProductImage: 'assets/images/pss5.png',
      ProductColor1: Colors.black,
      ProductColor2: Colors.white,
    ),
    ProductModel(
      id: 2,
      ProductType: "Sony",
      ProductName: 'Playstation 5 Controller',
      ProductOriginalPrice: '\$150.00',
      ProductDiscountPrice: '\$99.00',
      ProductImage: 'assets/images/ps5controller.png',
      ProductColor1: Colors.red,
      ProductColor2: Colors.blue,
    ),
    ProductModel(
      id: 3,
      ProductType: "Sony",
      ProductName: 'Playstation Remote',
      ProductOriginalPrice: '\$200.00',
      ProductDiscountPrice: '\$100.00',
      ProductImage: 'assets/images/remote.png',
      ProductColor1: Colors.red,
      ProductColor2: Colors.blue,
    ),
    ProductModel(
      id: 4,
      ProductType: "Sony",
      ProductName: 'Playstation Controller Charger',
      ProductOriginalPrice: '\$90.00',
      ProductDiscountPrice: '\$49.99',
      ProductImage: 'assets/images/ch.png',
      ProductColor1: Colors.red,
      ProductColor2: Colors.blue,
    ),
    ProductModel(
      id: 5,
      ProductType: "Sony",
      ProductName: 'Playstation HeadPhone',
      ProductOriginalPrice: '\$190.00',
      ProductDiscountPrice: '\$70.00',
      ProductImage: 'assets/images/head.png',
      ProductColor1: Colors.red,
      ProductColor2: Colors.blue,
    ),
    ProductModel(
      id: 6,
      ProductType: "Sony",
      ProductName: 'Playstation 3',
      ProductOriginalPrice: '\$100.00',
      ProductDiscountPrice: '\$50.00',
      ProductImage: 'assets/images/ps5.png',
      ProductColor1: Colors.green,
      ProductColor2: Colors.blue,
    ),
  ];

  void changeValueOfIndex(int value) {
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    var productIndex;
    return Scaffold(
      backgroundColor: Color(hexColor('#333742')),
      appBar: AppBar(
        backgroundColor: Color(hexColor('#333742')),
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.short_text,
            color: Colors.white,
          ),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.notifications_on_sharp,
              color: Colors.white,
            ),
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 30.0,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          changeValueOfIndex(index);
                        },
                        child: Stack(
                          alignment: Alignment.topLeft,
                          clipBehavior: Clip.none,
                          children: [
                            this.index == index
                                ? const Positioned(
                                    top: 1,
                                    child: CircleAvatar(
                                      radius: 3,
                                      backgroundColor: Colors.white,
                                    ))
                                : Container(),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                items[index],
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 40,
                      ),
                  itemCount: items.length),
            ),
            SizedBox(
              height: 30.0,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 590,
                    child: GridView.builder(
                        // physics: BouncingScrollPhysics(), بتخلي التطبيق يعمل سكرول غريب
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 250,
                            // childAspectRatio: 1,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        scrollDirection: Axis.vertical,
                        itemCount: products.length,
                        itemBuilder: (context, index) => buildProductItem(
                            products[index], productIndex = index, context)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildProductItem(ProductModel product, int index, BuildContext con) =>
    GestureDetector(
      onTap: () {
        Navigator.push(
            con,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(
                productM2: product,
              ),
            ));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3.0),
        decoration: BoxDecoration(
            color: Color(hexColor('#454D5A')),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        width: 164.w,
        height: 168.h,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(hexColor('#333742')),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      width: 45.0.w,
                      height: 30.0.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '4.6',
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.sp),
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Colors.amber,
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.grey[400],
                        ))
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image(
                      fit: BoxFit.fill,
                      alignment: Alignment.centerLeft,
                      // image: AssetImage('${product.ProductImage}'),
                      image: AssetImage(
                        "${product.ProductImage}",
                      ),
                      height: 100.0.h,
                      width: 100.0.w,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),

                    // Spacer(),
                    Container(
                        decoration: BoxDecoration(
                            color: Color(hexColor('#333742')),
                            borderRadius: BorderRadius.circular(10.0)),
                        width: 35.0.w,
                        height: 35.0.h,
                        child: Image(
                          image: AssetImage('assets/images/shop.png'),
                        )),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10.0),
                  child: Text(
                    '${product.ProductName}',
                    style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Expanded(
                  child: Row(
                    children: [
                      Text(
                        '${product.ProductDiscountPrice}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0.sp),
                      ),
                      SizedBox(
                        width: 10.0.w,
                      ),
                      Text(
                        '${product.ProductOriginalPrice}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0.sp,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
