

import '../../../data_model/graphql_base_model.dart';
import '../data_model/address_model.dart';

abstract class AddressBaseState {}

enum AddressStatus { success, fail }

class InitialAddressState extends AddressBaseState {
}

class RemoveAddressState extends AddressBaseState{
  AddressStatus? status;
  String? successMsg;
  String? error;
  GraphQlBaseModel? response;
  String? customerDeletedId;
  RemoveAddressState.success({this.response, this.customerDeletedId,this.successMsg}):status=AddressStatus.success;
  RemoveAddressState.fail({this.error}):status=AddressStatus.fail;

}

class FetchAddressState extends AddressBaseState {
  AddressStatus? status;
  String? error;
  String? successMsg;
  AddressModel? addressModel;

  FetchAddressState.success({this.addressModel, this.successMsg})
      : status = AddressStatus.success;

  FetchAddressState.fail({this.error}) : status = AddressStatus.fail;
}
