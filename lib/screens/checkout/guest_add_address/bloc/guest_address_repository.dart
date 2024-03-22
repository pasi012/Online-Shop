

import '../../../../services/api_client.dart';
import '../../../address_list/data_model/country_model.dart';
import 'package:flutter/material.dart';

abstract class GuestAddressRepository{
  Future<CountriesData?> callCountriesData();

}

class GuestAddressRepositoryImp implements GuestAddressRepository {

  @override
  Future<CountriesData?> callCountriesData() async {
    CountriesData? countryData;
    try{
      countryData = await ApiClient().getCountryStateList();
    }catch(error, stacktrace){
      debugPrint("Error --> $error");
      debugPrint("StackTrace --> $stacktrace");
    }
    return countryData;
  }


}