import 'package:flutter/cupertino.dart';

class ProductModel {
  // model
  final int? id;
  final String? ProductType;
  final String? ProductName;
  final String? ProductOriginalPrice;
  final String? ProductDiscountPrice;
  final String? ProductImage;
  final Color? ProductColor1;
  final Color? ProductColor2;
  // final Color? ProductColor3;

  ProductModel({
    @required this.id,
    @required this.ProductType,
    @required this.ProductName,
    @required this.ProductOriginalPrice,
    @required this.ProductDiscountPrice,
    @required this.ProductImage,
    @required this.ProductColor1,
    @required this.ProductColor2,
    // @required this.ProductColor3,
  });
}
