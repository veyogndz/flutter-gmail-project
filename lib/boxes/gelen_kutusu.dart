import 'package:flutter/material.dart';
import 'package:reply_project/constants/atoms/text_widget.dart';
import 'package:reply_project/constants/molecules/list_tile_widget.dart';
import 'package:reply_project/model/mail_model.dart';
import 'package:reply_project/pages/remote_api.dart';

class GelenKutusu extends StatelessWidget {
  const GelenKutusu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RemoteApi remoApi = RemoteApi();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gelen Kutusu"),
      ),
      body: Card(
        child: Center(
          child: FutureBuilder<List<MailModel>>(
            future: remoApi.getUserList(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<MailModel> mailList = snapshot.data!;
                return SizedBox(
                  height: 4,
                  width: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      MailModel mail = mailList[index];
                      return SizedBox(
                        height: double.maxFinite,
                            //padding:  EdgeInsets.all(16),
                            child: ListView(
                              children: [
                                ListTileWidget(
                                  title_widget: Text(mail.ustBaslik.toString()),
                                  subtitle_widget: TextWidget(text: mail.altBaslik,),

                                )
                              ],
                          )
                      );
                    },
                    itemCount: snapshot.data!.length,
                  ),
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}

/*
    Card(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget2(text: "Ali Connors - 4 hrs ago",),
                    TextWidget(text: "Brunch this Weekend?",),
                    TextWidget2(text: "I 'll go to dinner. You and Me whera are you doing ?",),
                  ],
                ),
              )
            ],
          ),
      ),
 */
