

import '../../../../services/api_client.dart';
import '../../data_model/save_order_model.dart';
import 'package:flutter/material.dart';

abstract class SaveOrderRepository{
  Future<SaveOrderModel>savePaymentReview();

}
class SaveOrderRepositoryImp implements SaveOrderRepository {
  @override
  Future<SaveOrderModel> savePaymentReview() async {
    SaveOrderModel? saveOrderModel;
    try {
      saveOrderModel = await ApiClient().placeOrder();
    } catch (error, stacktrace) {
      debugPrint("Error --> $error");
      debugPrint("StackTrace --> $stacktrace");
    }
    return saveOrderModel!;
  }
}


