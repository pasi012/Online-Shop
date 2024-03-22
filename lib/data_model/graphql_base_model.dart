
// file_names, constant_identifier_names
import 'package:json_annotation/json_annotation.dart';

part 'graphql_base_model.g.dart';

/// BaseModel class having some general variables which will use by other model classes.
@JsonSerializable()
class GraphQlBaseModel {
  String? success;
  bool? status;

  ///this variable use to check whether API response is true of false?
  String? message;
  int? cartCount;

  ///ths variable is use to save cart count
  dynamic error;

  GraphQlBaseModel({this.success, this.message, this.cartCount, this.status});

  factory GraphQlBaseModel.fromJson(Map<String, dynamic> json) =>
      _$GraphQlBaseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GraphQlBaseModelToJson(this);
}
