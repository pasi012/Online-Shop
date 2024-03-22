
import 'package:equatable/equatable.dart';

abstract class OrderListEvent extends Equatable {}

class FetchOrderListEvent extends OrderListEvent {
  final String? id;
  final String? startDate;
  final String? endDate;
  final String? status;
  final double? total;
  final int? page;

  FetchOrderListEvent({this.id, this.status, this.page, this.endDate, this.startDate, this.total});

  @override
  List<Object> get props => [];
}
