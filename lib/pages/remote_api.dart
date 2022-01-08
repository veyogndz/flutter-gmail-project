
import 'package:dio/dio.dart';
import 'package:reply_project/model/mail_model.dart';

class RemoteApi{
  Future<List<MailModel>> getUserList() async {
    try {
      var response =
      await Dio().get('https://mocki.io/v1/15f83ec3-2b7b-45f3-a9d9-b9f995655814');
      List<MailModel>? _modelList = [];
      if (response.statusCode == 2200) {
        _modelList = (response.data as List).map((e) => MailModel.fromJson(e)).cast<MailModel>().toList();
      }
      return _modelList;
    } on DioError catch (e) {
      return Future.error(e.message);
    }
  }
}
