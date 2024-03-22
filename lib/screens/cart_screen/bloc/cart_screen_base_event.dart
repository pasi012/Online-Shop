

import '../cart_model/cart_data_model.dart';

abstract class CartScreenBaseEvent{}

class RemoveCouponCartEvent extends CartScreenBaseEvent{
  CartModel? cartDetailsModel;

  RemoveCouponCartEvent(this.cartDetailsModel);
}

class AddCouponCartEvent extends CartScreenBaseEvent{
  String? code;
  AddCouponCartEvent(this.code);
}

class FetchCartDataEvent extends CartScreenBaseEvent{
}
class MoveToCartEvent extends CartScreenBaseEvent{
  int ?id;
  MoveToCartEvent(this.id);
}
class UpdateCartEvent extends CartScreenBaseEvent{
  List<Map<dynamic,String>> ? item ;
  UpdateCartEvent(this.item);
}

class RemoveCartItemEvent extends CartScreenBaseEvent{
  int? cartItemId;
  RemoveCartItemEvent({this.cartItemId});
}
class RemoveAllCartItemEvent extends CartScreenBaseEvent{
  RemoveAllCartItemEvent();
}