
// ignore_for_file: file_names, avoid_print


import '../../../services/api_client.dart';
import '../data_model/add_review_model.dart';

abstract class AddReviewRepository{
  Future<AddReviewModel> callAddReviewApi(String name,String title,int rating,String comment,int productId, List<Map<String, String>> attachments);
}


class AddReviewRepositoryImp implements AddReviewRepository {
  @override
  Future<AddReviewModel> callAddReviewApi(String name,String title,int rating,String comment,int productId, List<Map<String, String>> attachments) async {
    AddReviewModel? addReviewModel;
    try {
      addReviewModel = await ApiClient().addReview(name,title,rating,comment,productId, attachments);
    } catch (error, stacktrace) {
      print("Error --> $error");
      print("StackTrace --> $stacktrace");
    }
    return addReviewModel!;
  }
}