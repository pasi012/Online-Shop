
// ignore_for_file: file_names, must_be_immutable

import 'forget_password_base_event.dart';

class ForgetPasswordFetchEvent extends ForgetPasswordBaseEvent {
  String? email;
  ForgetPasswordFetchEvent({this.email,});
  List<Object> get props => [];
}
