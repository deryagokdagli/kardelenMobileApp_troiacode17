import 'package:firebase_core/firebase_core.dart';
import 'package:troiacode17/login.dart';
import 'package:troiacode17/register.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Uygulama başlatılmadan önce Firebase'i başlat
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Firebase'i başlat
  runApp(LogReg());
}

class LogReg extends StatelessWidget {
  const LogReg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TroiaCode:17',
        home: LogRegPage(),
        routes: {
          '/logreg': (context) {
            return LogReg();
          },
          '/register': (context) => Register(),
          '/login': (context) => Login(),
        });
  }
}

class LogRegPage extends StatefulWidget {
  const LogRegPage({super.key});

  @override
  State<LogRegPage> createState() => _LogRegPageState();
}

class _LogRegPageState extends State<LogRegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 175,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'KARDELEN',
              style: TextStyle(
                color: Color(0xFF15004D),
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10), // Burada boşluğu azaltabilirsiniz
            Text(
              'Eğitim Hakkını Savun, Geleceğini İnşa Et',
              style: TextStyle(
                color: Color(0xFF15004D),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 150),
            Container(
              width: 400,
              height: 70,
              decoration: BoxDecoration(
                  color: Color(0xFF15004D),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Giriş yap',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 400,
              height: 70,
              decoration: BoxDecoration(
                  color: Color(0xFF15004D),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text(
                  'Kayıt ol',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(top: 200),
              child: Text(
                '© 2025 TroiaCode: 17',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
