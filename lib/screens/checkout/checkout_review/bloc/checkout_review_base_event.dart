

abstract class CheckOutReviewBaseEvent {}

class CheckOutReviewSavePaymentEvent extends CheckOutReviewBaseEvent{
  String? paymentMethod;
  CheckOutReviewSavePaymentEvent({this.paymentMethod});
}