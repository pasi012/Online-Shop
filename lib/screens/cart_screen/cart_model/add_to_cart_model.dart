

import 'package:json_annotation/json_annotation.dart';
import '../../../data_model/graphql_base_error_model.dart';
import 'cart_data_model.dart';

part 'add_to_cart_model.g.dart';


@JsonSerializable()
class AddToCartModel extends GraphQlBaseErrorModel {
  bool? status;
  String? message;
  CartModel? cart;

  AddToCartModel({this.status, this.message, this.cart});

  factory AddToCartModel.fromJson(Map<String, dynamic> json) {
    return _$AddToCartModelFromJson(json);
  }
  @override
  Map<String, dynamic> toJson() => _$AddToCartModelToJson(this);
}


