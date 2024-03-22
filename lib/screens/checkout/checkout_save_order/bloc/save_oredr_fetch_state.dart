

import '../../data_model/save_order_model.dart';

abstract class SaveOrderBaseState {}

enum SaveOrderStatus { success, fail }

class SaveOrderInitialState extends SaveOrderBaseState {

}


class SaveOrderFetchDataState extends SaveOrderBaseState {

  SaveOrderStatus? status;
  String? error;
  SaveOrderModel? saveOrderModel;

  SaveOrderFetchDataState.success({this.saveOrderModel,}) : status = SaveOrderStatus.success;
  SaveOrderFetchDataState.fail({this.error}) : status = SaveOrderStatus.fail;

}
