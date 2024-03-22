

import '../../../../services/api_client.dart';
import '../../data_model/save_payment_model.dart';
import 'package:flutter/material.dart';

abstract class CheckOutReviewRepository{
  Future<SavePayment>savePaymentReview(String paymentMethod);

}
class CheckOutReviewRepositoryImp implements CheckOutReviewRepository {
  @override
  Future<SavePayment> savePaymentReview(String paymentMethod) async {
    SavePayment? savePaymentModel;
    try {
      savePaymentModel = await ApiClient().saveAndReview(paymentMethod);
    } catch (error, stacktrace) {
      debugPrint("Error --> $error");
      debugPrint("StackTrace --> $stacktrace");
    }
    return savePaymentModel!;
  }
}