

import '../../../../../services/api_client.dart';
import 'package:flutter/material.dart';

import '../../../address_list/data_model/address_model.dart';

abstract class CheckOutRepository{
  Future<AddressModel>callCheckoutAddressApi();

}
class CheckOutRepositoryImp implements CheckOutRepository {
  @override
  Future<AddressModel> callCheckoutAddressApi() async {
    AddressModel? addressModel;
    try {
      addressModel = await ApiClient().getAddressData();
    } catch (error, stacktrace) {
      debugPrint("Error --> $error");
      debugPrint("StackTrace --> $stacktrace");
    }
    return addressModel!;
  }
}