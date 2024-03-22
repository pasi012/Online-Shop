

import '../../data_model/checkout_save_address_model.dart';

abstract class CheckOutShippingBaseState {}

enum CheckOutShippingStatus { success, fail }

class CheckOutShippingInitialState extends CheckOutShippingBaseState {

}


class CheckOutFetchShippingState extends CheckOutShippingBaseState {

  CheckOutShippingStatus? status;
  String? error;
  SaveCheckoutAddresses? checkOutSaveAddressModel;

  CheckOutFetchShippingState.success({this.checkOutSaveAddressModel,}) : status = CheckOutShippingStatus.success;
  CheckOutFetchShippingState.fail({this.error}) : status = CheckOutShippingStatus.fail;

}
