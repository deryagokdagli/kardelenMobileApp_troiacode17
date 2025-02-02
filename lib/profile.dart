import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:troiacode17/logreg.dart';
import 'package:troiacode17/mainpage.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Uygulama başlatılmadan önce Firebase'i başlat
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Firebase'i başlat
  runApp(Profile());
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TroiaCode:17',
        home: ProfilePage(),
        initialRoute: '/',
        routes: {
          '/profile ': (context) {
            return ProfilePage();
          },
          '/mainpage': (context) => MainPage(),
          '/logreg': (context) => LogReg(),
        });
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  /*final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String username = "Yükleniyor...";
  String email = "Yükleniyor...";
  String school = "Yükleniyor...";

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  Future<void> getUserData() async {
    // Firebase Authentication'dan giriş yapmış kullanıcıyı al
    User? user = _auth.currentUser;

    // Eğer kullanıcı oturum açtıysa
    if (user != null) {
      try {
        // Firestore'dan kullanıcı verilerini çek
        DocumentSnapshot userData = await _firestore.collection('users').doc(user.uid).get();

        // Eğer kullanıcı verisi Firestore'da mevcutsa
        if (userData.exists) {
          setState(() {
            // Firestore'dan alınan verilere göre UI'yi güncelle
            username = "${userData['Ad']} ${userData['Soyad']}";
            email = userData['E-posta'];
            school = userData['Okul'];
          });
        } else {
          // Firestore'da kullanıcı verisi yoksa
          print("Kullanıcı verisi bulunamadı.");
        }
      } catch (e) {
        // Hata durumunda bir şeyler yazdır
        print("Hata oluştu: $e");
      }
    } else {
      // Kullanıcı oturum açmamışsa
      print("Kullanıcı girişi yapılmamış.");
    }
  }*/
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
        title: Text(
          'Username',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.cyan,
            fontSize: 40,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 150),
                /*Text(
                  'username',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),*/
                SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "school",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                    Container(
                      child: Text(
                        "email",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                    Container(
                      child: Text(
                        "Şikayet Sayısı: 3",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                    Container(
                      child: Text(
                        "Olumlu: 2",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                    Container(
                      child: Text(
                        "Olumsuz: 1",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 80),
                    Center(
                      child: Container(
                        width: 180,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.red[800],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: () {
                            print("Hesabı sil butonuna tıklandı!");
                            Navigator.pushNamed(context, '/logreg');
                          },
                          child: Text(
                            'Hesabı sil',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
