

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../address_list/data_model/address_model.dart';
import 'checkout_address_state.dart';
import 'checkout_base_event.dart';
import 'checkout_repository.dart';

class CheckOutBloc extends Bloc<CheckOutBaseEvent, CheckOutBaseState> {
  CheckOutRepository? repository;

  CheckOutBloc(this.repository) : super(CheckOutLoaderState()){
    on<CheckOutBaseEvent> (mapEventToState);
  }

void mapEventToState(CheckOutBaseEvent event,Emitter<CheckOutBaseState> emit) async {
    if (event is CheckOutAddressEvent) {
      try {
        AddressModel? addressModel = await repository?.callCheckoutAddressApi();

        emit (CheckOutAddressState.success(addressModel: addressModel));
      } catch (e) {
        emit (CheckOutAddressState.fail(error: e.toString()));
      }
    }

  }

}
