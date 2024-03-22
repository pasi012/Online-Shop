


import '../data_model/add_review_model.dart';

abstract class AddReviewBaseState {}

enum AddReviewStatus { success, fail }

class AddReviewInitialState extends AddReviewBaseState {
  List<Object> get props => [];
}

class AddReviewFetchState extends AddReviewBaseState {
  AddReviewStatus? status;
  String? error;
  String? successMsg;
  AddReviewModel? addReviewModel;

  AddReviewFetchState.success({this.addReviewModel, this.successMsg})
      : status = AddReviewStatus.success;

  AddReviewFetchState.fail({this.error}) : status = AddReviewStatus.fail;

  List<Object> get props =>
      [if (addReviewModel != null) addReviewModel! else ""];
}

class ImagePickerState extends AddReviewBaseState {
  String? image;
  ImagePickerState(this.image);
  List<Object> get props => [];
}
