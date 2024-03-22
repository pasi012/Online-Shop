

import '../../../address_list/data_model/country_model.dart';

abstract class GuestAddressBaseState  {}

enum GuestStatus { success, fail }

class GuestAddressInitialState extends GuestAddressBaseState {

}

class GuestAddressCountryState extends GuestAddressBaseState {

  GuestStatus? status;
  String? error;
  String? successMsg;
  CountriesData? countryData;


  GuestAddressCountryState.success({this.countryData,this.successMsg}) : status = GuestStatus.success;

  GuestAddressCountryState.fail({this.error}) : status = GuestStatus.fail;

}
