

abstract class CheckOutPaymentBaseEvent {}

class CheckOutPaymentEvent extends CheckOutPaymentBaseEvent{
  String? shippingMethod;
  CheckOutPaymentEvent({this.shippingMethod});
}