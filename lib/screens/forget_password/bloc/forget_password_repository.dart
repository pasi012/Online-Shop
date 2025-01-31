
// ignore_for_file: file_names, avoid_print


import 'package:bagisto_app_demo/screens/sign_up/utils/index.dart';

abstract class ForgetPasswordRepository{
  Future<GraphQlBaseModel>callForgetPasswordApi(String email);
}
class ForgetPasswordRepositoryImp implements ForgetPasswordRepository {
  @override
  Future<GraphQlBaseModel> callForgetPasswordApi(String email) async {

    GraphQlBaseModel? baseModel;
    try{
      baseModel = await ApiClient().forgotPassword(email);
    }
    catch(e, stacktrace){

      print("Error --> $e");
      print("StackTrace --> $stacktrace");

    }
    return baseModel!;
  }

}