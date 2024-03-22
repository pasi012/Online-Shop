
import 'package:bagisto_app_demo/screens/orders/utils/index.dart';
import 'package:equatable/equatable.dart';

abstract class OrderListBaseState extends Equatable {}

enum OrderStatus { success, fail }

class OrderInitialState extends OrderListBaseState {
  @override
  List<Object> get props => [];
}

class FetchOrderListState extends OrderListBaseState {

  OrderStatus? status;
  String? error;
  OrdersListModel? ordersListModel;

  FetchOrderListState.success({this.ordersListModel}) : status = OrderStatus.success;
  FetchOrderListState.fail({this.error}) : status = OrderStatus.fail;

  @override
  List<Object> get props => [if (ordersListModel !=null) ordersListModel! else ""];
}
