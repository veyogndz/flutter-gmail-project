import 'package:flutter/material.dart';
import 'package:reply_project/boxes/cop_kutusu.dart';
import 'package:reply_project/boxes/gonderilmis_kutu.dart';
import 'package:reply_project/boxes/spam_kutusu.dart';
import 'package:reply_project/boxes/taslak_kutusu.dart';
import 'package:reply_project/boxes/yildizli_kutu.dart';
import 'package:reply_project/constants/molecules/list_tile_widget.dart';
import 'package:reply_project/constants/atoms/text_widget.dart';
import 'package:reply_project/constants/atoms/text_widget_2.dart';
import 'package:reply_project/boxes/gelen_kutusu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reply Page"),
        primary: true,
        elevation: 99,
        shadowColor: Colors.black,
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade800,
        child: ListView(
          children: [
            TextWidget(text: "Reply Page", align: TextAlign.left),
            ExpansionTile(
              title: const Text(
                "OLUŞTUR",
              ),
              leading: const Icon(Icons.comment),
              children: [
                ListTileWidget(
                  title_widget: const Text("COMPOSE"),
                  leading_widget: const Icon(Icons.messenger_outlined),
                ),
              ],
            ),
            ListTileWidget(
              title_widget: const Text("GELEN KUTUSU"),
              leading_widget: const Icon(Icons.upcoming),
              onpress_widget: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  GelenKutusu()));
              },
            ),
            ListTileWidget(
              title_widget: const Text("YILDIZLI"),
              leading_widget: const Icon(Icons.star_border),
              onpress_widget: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const YildizliKutu()));
              },
            ),
            ListTileWidget(
              title_widget: const Text("GÖNDERİLMİŞ"),
              leading_widget: const Icon(Icons.send),
              onpress_widget: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const GonderilenKutusu()));
              },
            ),
            ListTileWidget(
              title_widget: const Text("ÇÖP KUTUSU"),
              leading_widget: const Icon(Icons.error),
              onpress_widget: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CopKutusu()));
              },
            ),
            ListTileWidget(
              title_widget: const Text("SPAM"),
              leading_widget: const Icon(Icons.open_in_new),
              onpress_widget: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SpamKutusu()));
              },
            ),
            ListTileWidget(
              title_widget: const Text("TASLAKLAR"),
              leading_widget: const Icon(Icons.drafts),
              onpress_widget: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TaslakKutusu()));
              },
            ),
            const Divider(
              color: Colors.brown,
              thickness: 1,
            ),
            TextWidget2(text: "FOLDERS"),
            ListTileWidget(
              title_widget: const Text("RECEIPTS"),
              leading_widget: const Icon(Icons.folder),
              onpress_widget: () {},
            ),
            ListTileWidget(
              title_widget: const Text("PINE ELEMENTARY"),
              leading_widget: const Icon(Icons.folder),
              onpress_widget: () {},
            ),
            ListTileWidget(
              title_widget: const Text("TAXES"),
              leading_widget: const Icon(Icons.folder),
              onpress_widget: () {},
            ),
            ListTileWidget(
              title_widget: const Text("VACATION"),
              leading_widget: const Icon(Icons.folder),
              onpress_widget: () {},
            ),
            ListTileWidget(
              title_widget: const Text("MORTGAGE"),
              leading_widget: const Icon(Icons.folder),
              onpress_widget: () {},
            ),
            ListTileWidget(
              title_widget: const Text("FREELANCE"),
              leading_widget: const Icon(Icons.folder),
              onpress_widget: () {
              },
            ),
          ],
        ),
      ),
      body: Center(
      child : TextWidget(text: "CENTER",)
      ),

    );
  }
}
