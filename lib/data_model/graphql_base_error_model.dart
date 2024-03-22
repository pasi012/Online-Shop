
import 'package:json_annotation/json_annotation.dart';

part 'graphql_base_error_model.g.dart';

@JsonSerializable()
class GraphQlBaseErrorModel {
  String? success;
  bool? responseStatus;

  GraphQlBaseErrorModel({
    this.success,
    this.responseStatus,
  });

  factory GraphQlBaseErrorModel.fromJson(Map<String, dynamic> json) =>
      _$GraphQlBaseErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$GraphQlBaseErrorModelToJson(this);
}
