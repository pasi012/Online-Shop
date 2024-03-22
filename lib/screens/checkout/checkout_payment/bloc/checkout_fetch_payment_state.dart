


import '../../data_model/checkout_save_shipping_model.dart';

abstract class CheckOutPaymentBaseState {}

enum CheckOutPaymentStatus { success, fail }

class CheckOutPaymentInitialState extends CheckOutPaymentBaseState {

}


class CheckOutFetchPaymentState extends CheckOutPaymentBaseState {

  CheckOutPaymentStatus? status;
  String? error;
  PaymentMethods? checkOutShipping;
  int?index;

  CheckOutFetchPaymentState.success({this.checkOutShipping,this.index}) : status = CheckOutPaymentStatus.success;
  CheckOutFetchPaymentState.fail({this.error}) : status = CheckOutPaymentStatus.fail;

}
