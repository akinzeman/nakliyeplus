/* sidemenu - main menu icon as pic */
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:nakliyeplus/pages/profile.dart';
import 'package:nakliyeplus/variables.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const koseYuvarligi = 30.0;
    // final scaffoldKey = GlobalKey<ScaffoldState>();

    return Drawer(
      width: 260,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(koseYuvarligi),
            bottomRight: Radius.circular(koseYuvarligi)),
      ),
      child: Flex(
          direction: Axis.vertical, // this is unique
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            // en üst profil containerı
            GestureDetector(
              onTap: () {
                // toggleDrawer(scaffoldKey);
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ProfilePage();
                }));
              },
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(koseYuvarligi),
                    ),
                    color: colorSecondary), //Color.fromARGB(106, 255, 193, 7)),
                child: SizedBox(
                  width: 80.0,
                  height: 80.0,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 40.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(60.0),
                          child: Image.asset(
                            "assets/images/profile.jpg",
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const Text(
                          "V.Murat Çelik",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.9),
                              // fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              // orta maddelerin oldugu kolon
              child: Container(
                color: const Color.fromARGB(
                    255, 213, 236, 255), // Color.fromRGBO(255, 193, 7, 0.596),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    ListTile(
                      // to compact
                      dense: true,
                      visualDensity: const VisualDensity(vertical: -1),
                      //
                      horizontalTitleGap: -5, // tip:trailerdan sonraki padding
                      contentPadding: const EdgeInsets.only(left: 10),
                      leading: Transform.scale(
                          scale: 1.15, child: const Icon(Icons.person_outline)),
                      // leading: Icon(Icons.account_box),
                      title: const Text("Profil",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 53, 53, 53))),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return ProfilePage();
                        }));
                      },
                    ),
                    const Divider(),
                    ListTile(
                      // to compact
                      dense: true,
                      visualDensity: const VisualDensity(vertical: -1),
                      //
                      horizontalTitleGap: -5, // tip:trailerdan sonraki padding
                      contentPadding: const EdgeInsets.only(left: 10),
                      leading: const Icon(Icons.ios_share),
                      title: const Text("Paylaş",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 53, 53, 53))),
                      onTap: () {
                        FlutterShare.share(
                            title: "Nakliye Uygulaması",
                            text: "Artık yük ve araç bulmak çok kolay",
                            linkUrl: "https://NakliyePlus.com");
                      },
                    ),
                  ],
                ),
              ),
            ),
            Center(
              // en alt sub grup
              child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(koseYuvarligi)),
                      color: Color.fromARGB(255, 213, 236, 255)),
                  child: Column(children: [
                    ListTile(
                      // to compact
                      dense: true,
                      visualDensity: const VisualDensity(vertical: -1),
                      //
                      horizontalTitleGap: -5, // tip:trailerdan sonraki padding
                      contentPadding: const EdgeInsets.only(left: 10),
                      leading: const Icon(Icons.phone_android_outlined),
                      title: const Text(
                        "+90 555 2552393",
                        style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                      ),
                      onTap: () => launchUrl(Uri.parse('tel:05552552393')),
                    ),
                    ListTile(
                      // to compact
                      dense: true,
                      visualDensity: const VisualDensity(vertical: -1),
                      //  // tip: sığdırmak için
                      // minLeadingWidth: X,
                      horizontalTitleGap: -5, // tip:trailerdan sonraki padding
                      contentPadding: const EdgeInsets.only(left: 10),

                      leading: const Icon(Icons.email_outlined),
                      title: const Text(
                        "iletisim@NakliyePlus.com",
                        style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                      ),
                      onTap: () => launchUrl(
                          Uri.parse('mailto:iletisim@nakliyeplus.com')),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Text(
                      "©2023 NakliyePlus",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 110, 110, 110)),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                  ])),
            )
          ]),
    );
  }
}
