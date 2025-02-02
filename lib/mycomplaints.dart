import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:troiacode17/mainpage.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Uygulama başlatılmadan önce Firebase'i başlat
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Firebase'i başlat
  runApp(MyComplaints());
}

class MyComplaints extends StatelessWidget {
  const MyComplaints({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TroiaCode:17',
        home: MyComplaintsPage(),
        initialRoute: '/',
        routes: {
          '/mycomplaints ': (context) {
            return MyComplaintsPage();
          },
          '/mainpage': (context) => MainPage(),
        });
  }
}

class MyComplaintsPage extends StatefulWidget {
  const MyComplaintsPage({super.key});

  @override
  State<MyComplaintsPage> createState() => _MyComplaintsPageState();
}

class _MyComplaintsPageState extends State<MyComplaintsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF15004D)),
          onPressed: () {
            Navigator.pushNamed(context, '/mainpage');
            print("Geri button clicked!");
          },
        ),
        title: Image.asset(
          'lib/assets/images/complain.png',
          height: 100,
          width: 100,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 230),
            Container(
                width: double.infinity, // Butonun tam genişlikte olmasını sağlar
                height: 60, // Butonun yüksekliği
                decoration: BoxDecoration(
                  color: Colors.lightBlue, // Butonun arka plan rengi
                  borderRadius: BorderRadius.circular(10), // Köşe yuvarlama
                ),
                child: TextButton(
                  onPressed: () {
                    print("Butona tıklandı");
                  },
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.start, // İçerik soldan hizalanacak
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10), // Sol boşluk
                        child: Image.asset(
                          'lib/assets/images/dialog.png', // İkon burada, istediğiniz ikon kullanılabilir
                          color: Colors.white, // İkon rengi
                        ),
                      ),
                      SizedBox(width: 20), // İkon ile yazı arasına boşluk
                      Text(
                        'Bekçi Sorunu',
                        style: TextStyle(
                          color: Colors.white, // Yazı rengi
                          fontSize: 20, // Yazı boyutu
                          fontWeight: FontWeight.bold, // Yazı kalınlığı
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(height: 20),
            Container(
                width:
                double.infinity, // Butonun tam genişlikte olmasını sağlar
                height: 60, // Butonun yüksekliği
                decoration: BoxDecoration(
                  color: Colors.lightBlue, // Butonun arka plan rengi
                  borderRadius: BorderRadius.circular(10), // Köşe yuvarlama
                ),
                child: TextButton(
                  onPressed: () {
                    print("Butona tıklandı");
                  },
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.start, // İçerik soldan hizalanacak
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10), // Sol boşluk
                        child: Image.asset(
                          'lib/assets/images/dialog.png', // İkon burada, istediğiniz ikon kullanılabilir
                          color: Colors.white, // İkon rengi
                        ),
                      ),
                      SizedBox(width: 20), // İkon ile yazı arasına boşluk
                      Text(
                        'Materyal Eksikliği Sorunu',
                        style: TextStyle(
                          color: Colors.white, // Yazı rengi
                          fontSize: 20, // Yazı boyutu
                          fontWeight: FontWeight.bold, // Yazı kalınlığı
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(height: 20),
            Container(
                width: double.infinity, // Butonun tam genişlikte olmasını sağlar
                height: 60, // Butonun yüksekliği
                decoration: BoxDecoration(
                  color: Colors.lightBlue, // Butonun arka plan rengi
                  borderRadius: BorderRadius.circular(10), // Köşe yuvarlama
                ),
                child: TextButton(
                  onPressed: () {
                    print("Butona tıklandı");
                  },
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.start, // İçerik soldan hizalanacak
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10), // Sol boşluk
                        child: Image.asset(
                          'lib/assets/images/dialog.png', // İkon burada, istediğiniz ikon kullanılabilir
                          color: Colors.white, // İkon rengi
                        ),
                      ),
                      SizedBox(width: 20), // İkon ile yazı arasına boşluk
                      Text(
                        'Hijyen Sorunu',
                        style: TextStyle(
                          color: Colors.white, // Yazı rengi
                          fontSize: 20, // Yazı boyutu
                          fontWeight: FontWeight.bold, // Yazı kalınlığı
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
