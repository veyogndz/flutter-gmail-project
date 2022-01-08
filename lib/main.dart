import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:reply_project/model/mail_model.dart';
import 'package:reply_project/pages/home_page.dart';
import 'package:reply_project/pages/remote_api.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

  class _MyAppState extends State<MyApp> {

  RemoteApi zaa = RemoteApi();

  @override
    void initState() {
     funny();
      super.initState();
    }

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const HomePage(),
      );
    }
    Future funny() async{
      /*
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setStringList("MailList", await zaa.getUserList());
      */
      GetStorage.init();
      GetStorage asd = GetStorage();
      List<MailModel> MailListModel = await zaa.getUserList();
      asd.write("MailList", MailListModel.map((e) => e.toJson()).toList());
      debugPrint(asd.read("MailList").toString());
    }
  }


