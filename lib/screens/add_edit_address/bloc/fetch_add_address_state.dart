

import '../../../data_model/graphql_base_model.dart';
import '../../address_list/data_model/country_model.dart';
import '../../address_list/data_model/update_address_model.dart';

abstract class AddEditAddressBaseState {}
enum AddEditStatus { success, fail }

class InitialAddEditAddressState extends AddEditAddressBaseState {
  List<Object> get props => [];
}


class FetchAddAddressState extends AddEditAddressBaseState {

  AddEditStatus? status;
  String? error;
  String? successMsg;
  GraphQlBaseModel? baseModel;


  FetchAddAddressState.success({this.baseModel,this.successMsg}) : status = AddEditStatus.success;

  FetchAddAddressState.fail({this.error}) : status = AddEditStatus.fail;

}


class FetchEditAddressState extends AddEditAddressBaseState {

  AddEditStatus? status;
  String? error;
  String? successMsg;
  UpdateAddressModel? updateAddressModel;


  FetchEditAddressState.success({this.updateAddressModel,this.successMsg}) : status = AddEditStatus.success;

  FetchEditAddressState.fail({this.error}) : status = AddEditStatus.fail;

  List<Object> get props => [if (updateAddressModel !=null) updateAddressModel! else ""];
}


class AddressCountryState extends AddEditAddressBaseState {

  AddEditStatus? status;
  String? error;
  String? successMsg;
  CountriesData? countryData;


  AddressCountryState.success({this.countryData,this.successMsg}) : status = AddEditStatus.success;

  AddressCountryState.fail({this.error}) : status = AddEditStatus.fail;

  List<Object> get props => [if (countryData !=null) countryData! else ""];
}
