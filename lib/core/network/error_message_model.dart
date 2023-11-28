import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final int statusCode;
  final String statusMessage;
  bool success;

  ErrorMessageModel(
      {required this.statusCode,
      required this.statusMessage,
      required this.success});

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
        statusCode: json["status_code"],
        success: json["success"],
        statusMessage: json["status_message"]);
  }

  @override
  List<Object> get props => [statusCode, statusMessage, success];
}
