import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mydemo/models/user_model.dart';

class DioClient {
  final Dio _dio = Dio();

  final _baseUrl = 'https://randomuser.me';

  Future<List<UserModel>?> getUser() async {
    try {
      Response response = await _dio.get('$_baseUrl/api/?results=100');
      print("234567890-");

      var data = response.data;
      List<UserModel> users = List<UserModel>.from(
          data["results"].map((model) => UserModel.fromJson(model)));
      return users;
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    return null;
  }
}
