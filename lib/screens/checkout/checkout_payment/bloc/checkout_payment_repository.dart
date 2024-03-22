

import '../../../../services/api_client.dart';
import '../../data_model/checkout_save_shipping_model.dart';
import 'package:flutter/material.dart';

abstract class CheckOutPaymentRepository {
  Future<PaymentMethods> saveCheckOutPayment(String shippingMethod);
}

class CheckOutPaymentRepositoryImp implements CheckOutPaymentRepository {
  @override
  Future<PaymentMethods> saveCheckOutPayment(String shippingMethod) async {
    PaymentMethods? checkOutShipping;
    try {
      checkOutShipping = await ApiClient().saveShippingMethods(shippingMethod);
    } catch (error, stacktrace) {
      debugPrint("Error --> $error");
      debugPrint("StackTrace --> $stacktrace");
    }
    return checkOutShipping!;
  }
}
