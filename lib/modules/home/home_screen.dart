import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/models/product/product_model.dart';

import '../details/details_screen1.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Function function;
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

  List<String> images = [
    'assets/images/ps5controller.png',
    'assets/images/head.png',
    'assets/images/sort.png',
    'assets/images/ps5controller.png',
  ];

  List<Widget> genereteImagesTiles() {
    return images
        .map((e) => ClipRect(
              child: Image.asset(
                e,
                fit: BoxFit.cover,
              ), //borderRadius:BorderRadius.circular(15.0)
            ))
        .toList();
  }

  List<ProductModel> products = [
    ProductModel(
      id: 1,
      ProductType: "Sony",
      ProductName: 'Playstation 5',
      ProductOriginalPrice: '\$999.9',
      ProductDiscountPrice: '\$890.0',
      ProductImage: 'assets/images/pss5.png',
      ProductColor1: Colors.black,
      ProductColor2: Colors.white,
      // ProductColor3: Colors.green,
    ),
    ProductModel(
      id: 2,
      ProductType: "Sony",
      ProductName: 'Playstation 5 Controller',
      ProductOriginalPrice: '\$150.9',
      ProductDiscountPrice: '\$99.0',
      ProductImage: 'assets/images/ps5controller.png',
      ProductColor1: Colors.red,
      ProductColor2: Colors.blue,
    ),
    ProductModel(
      id: 3,
      ProductType: "Sony",
      ProductName: 'Playstation Remote',
      ProductOriginalPrice: '\$200.9',
      ProductDiscountPrice: '\$100.0',
      ProductImage: 'assets/images/remote.png',
      ProductColor1: Colors.red,
      ProductColor2: Colors.blue,
    ),
    ProductModel(
      id: 4,
      ProductType: "Sony",
      ProductName: 'Playstation Controller Charger',
      ProductOriginalPrice: '\$90.9',
      ProductDiscountPrice: '\$49.9',
      ProductImage: 'assets/images/ch.png',
      ProductColor1: Colors.red,
      ProductColor2: Colors.blue,
    ),
    ProductModel(
      id: 5,
      ProductType: "Sony",
      ProductName: 'Playstation HeadPhone',
      ProductOriginalPrice: '\$190.9',
      ProductDiscountPrice: '\$70.0',
      ProductImage: 'assets/images/head.png',
      ProductColor1: Colors.red,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              SizedBox(
                height: 30.0.h,
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
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 14),
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
                height: 25.0.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(hexColor('#454D5A')),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 25.0),
                            hintText: 'Search Products...',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.normal),
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0.w,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(hexColor('#454D5A')),
                          borderRadius: BorderRadius.circular(10.0)),
                      width: 50.0.w,
                      height: 50.0.h,
                      child: Image(
                        image: AssetImage('assets/images/sort.png'),
                      )),
                ],
              ),
              SizedBox(
                height: 30.0.h,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 455.h,
                    // child:ListView.builder(
                    //     itemCount: products.length,
                    //     scrollDirection: Axis.horizontal,
                    //     itemBuilder: (context, index) => buildProductItem(
                    //         products[index], poductIndex = index, context)),

                    child: CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 455.h,
                          padEnds: false,
                          viewportFraction: .80,
                          enableInfiniteScroll: true,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          enlargeStrategy: CenterPageEnlargeStrategy.scale,
                          scrollDirection: Axis.horizontal,
                        ),
                        itemCount: products.length,
                        itemBuilder:
                            (BuildContext context, int index, int realIndex) =>
                                buildProductItem(products[index],
                                    productIndex = index, context)),
                  ),
                ],
              ),
            ],
          ),
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
              builder: (context) => DetailsScreen1(
                productM: product,
              ),
            ));
      },
      child: Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            color: Color(hexColor('#454D5A')),
            borderRadius: BorderRadius.all(Radius.circular(34.0))),
        width: 285.w,
        height: 455.h,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '${product.ProductType}',
                    style: TextStyle(color: Colors.grey[300]),
                  ),
                  Spacer(),
                  // SizedBox(
                  //   width: 147.0,
                  // ),
                  IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.grey[400],
                      ))
                ],
              ),
              Text(
                '${product.ProductName}',
                style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Expanded(
                child: Image(
                  alignment: Alignment.centerLeft,
                  // image: AssetImage('${product.ProductImage}'),
                  image: AssetImage("${product.ProductImage}"),
                  height: 250.0.h,
                  width: 250.0.w,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        Container(
                          width: 20.0.w,
                          height: 20.0.h,
                          decoration: BoxDecoration(
                              color: product.ProductColor1,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                        ),
                        SizedBox(
                          height: 10.0.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: product.ProductColor2,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          width: 20.0.w,
                          height: 20.0.h,
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 130.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          Text(
                            '${product.ProductDiscountPrice}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp),
                          ),
                          SizedBox(
                            width: 10.0.w,
                          ),
                          Text(
                            '${product.ProductOriginalPrice}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.0.sp,
                                decorationColor: Colors.white,
                                decoration: TextDecoration.lineThrough),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );

int hexColor(String c) {
  String sColor = '0xff' + c;
  sColor = sColor.replaceAll('#', '');
  int dColor = int.parse(sColor);
  return dColor;
}
