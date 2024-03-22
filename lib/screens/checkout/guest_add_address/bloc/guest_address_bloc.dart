

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../address_list/data_model/country_model.dart';
import 'guest_address_base_event.dart';
import 'guest_address_country_state.dart';
import 'guest_address_repository.dart';

class GuestAddressBloc extends Bloc<GuestAddressBaseEvent, GuestAddressBaseState> {
  GuestAddressRepository? repository;

  GuestAddressBloc(this.repository) : super(GuestAddressInitialState()){
    on<GuestAddressBaseEvent>(mapEventToState);
  }

void mapEventToState(GuestAddressBaseEvent event,Emitter<GuestAddressBaseState> emit) async {
    if(event is GuestAddressCountryEvent){
      try {
        CountriesData? countryData = await repository?.callCountriesData();
        emit (GuestAddressCountryState.success(countryData: countryData));
      } catch (e) {
        emit (GuestAddressCountryState.fail(error: e.toString()));
      }
    }


  }


}
