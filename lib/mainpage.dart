import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:troiacode17/bin.dart';
import 'package:troiacode17/createcomplaint.dart';
import 'package:troiacode17/inbox.dart';
import 'package:troiacode17/logreg.dart';
import 'package:troiacode17/mycomplaints.dart';
import 'package:troiacode17/myrights.dart';
import 'package:troiacode17/profile.dart';
import 'package:troiacode17/sregister.dart';
import 'package:troiacode17/tregister.dart';

import 'firebase_options.dart';
import 'gregister.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Uygulama başlatılmadan önce Firebase'i başlat
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Firebase'i başlat
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TroiaCode:17',
        home: MainHomePage(),
        initialRoute: '/',
        routes: {
          '/mainpage': (context) {
            return MainHomePage();
          },
          '/profile': (context) => Profile(),
          '/inbox': (context) => Inbox(),
          '/mycomplaints': (context) => MyComplaints(),
          '/createcomplaint': (context) => CreateComplaint(),
          '/myrights': (context) => MyRights(),
          '/bin': (context) => Bin(),
          '/logreg': (context) => LogReg(),
          '/sregister': (context) => SRegister(),
          '/tregister': (context) => TRegister(),
          '/gregister': (context) => GRegister(),
        });
  }
}

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance; // FirebaseAuth nesnesi

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      print("Başarıyla çıkış yapıldı!");
      Navigator.pushNamed(context, '/logreg'); // Giriş ekranına yönlendir
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          title: Text(
            'KARDELEN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF15004D),
              fontSize: 30,
              letterSpacing: 0.5,
            ),
            textAlign: TextAlign.left,
          ),
          actions: [
            TextButton(
              onPressed: () async {
                await signOut();
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  'Çıkış Yap',
                  style: TextStyle(
                    color: Color(0xFF15004D), // Buton yazı rengi
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 150),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(color: Colors.white),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shadowColor: Colors.transparent,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/profile');
                                  print("Profil button clicked!");
                                },
                                child: Image.asset(
                                  'lib/assets/images/user-account.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 1),
                            Text(
                              'Profil',
                              style: TextStyle(
                                color: Color(0xFF15004D),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(color: Colors.white),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shadowColor: Colors.transparent,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/inbox');
                                  print("Gelen Kutusu button clicked!");
                                },
                                child: Image.asset(
                                  'lib/assets/images/mainmail.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 1),
                            Text(
                              'Gelen Kutusu',
                              style: TextStyle(
                                color: Color(0xFF15004D),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(color: Colors.white),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shadowColor: Colors.transparent,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/mycomplaints');
                                print("Şikayetlerim button clicked!");
                              },
                              child: Image.asset(
                                'lib/assets/images/danger-sign.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Şikayetlerim',
                            style: TextStyle(
                              color: Color(0xFF15004D),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(color: Colors.white),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shadowColor: Colors.transparent,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, '/createcomplaint');
                                print("Oluştur button clicked!");
                              },
                              child: Image.asset(
                                'lib/assets/images/feedback.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Oluştur',
                            style: TextStyle(
                              color: Color(0xFF15004D),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(color: Colors.white),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shadowColor: Colors.transparent,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/myrights');
                                  print("Haklarım button clicked!");
                                },
                                child: Image.asset(
                                  'lib/assets/images/bill-of-rights.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              'Haklarım',
                              style: TextStyle(
                                color: Color(0xFF15004D),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(color: Colors.white),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shadowColor: Colors.transparent,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/bin');
                                  print("Çöp Kutusu button clicked!");
                                },
                                child: Image.asset(
                                  'lib/assets/images/mainbin.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              'Çöp Kutusu',
                              style: TextStyle(
                                color: Color(0xFF15004D),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ]),
                ])));
  }
}
