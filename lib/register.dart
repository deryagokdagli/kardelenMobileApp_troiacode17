import 'package:firebase_core/firebase_core.dart';
import 'package:troiacode17/gregister.dart';
import 'package:troiacode17/logreg.dart';
import 'package:troiacode17/sregister.dart';
import 'package:troiacode17/tregister.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Uygulama başlatılmadan önce Firebase'i başlat
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Firebase'i başlat
  runApp(Register());
}

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TroiaCode:17',
        home: RegisterPage(),
        initialRoute: '/',
        routes: {
          '/register ': (context) {
            return RegisterPage();
          },
          '/logreg': (context) => LogReg(),
          '/tregister': (context) => TRegister(),
          '/sregister': (context) => SRegister(),
          '/gregister': (context) => GRegister(),

        });
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              Navigator.pushNamed(context, '/logreg');
              print("Geri button clicked!");
            },
          ),
          title: Text(
            'KARDELEN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF15004D),
              fontSize: 40,
              letterSpacing: 0.5,
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color(0xFF15004D),
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/tregister');
                            print("Button clicked!");
                          },
                          child: Image.asset(
                            'lib/assets/images/teacher.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/tregister');
                          print("Öğretmen button clicked!");
                        },
                        child: Text(
                          'ÖĞRETMEN',
                          style: TextStyle(
                            color: Color(0xFF15004D),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF15004D),
                            shadowColor: Colors.transparent,
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/sregister');
                            print("Button clicked!");
                          },
                          child: Image.asset(
                            'lib/assets/images/group.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/sregister');
                          print("Öğrenci button clicked!");
                        },
                        child: Text(
                          'ÖĞRENCİ',
                          style: TextStyle(
                            color: Color(0xFF15004D),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF15004D),
                            shadowColor: Colors.transparent,
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/gregister');
                            print("Button clicked!");
                          },
                          child: Image.asset(
                            'lib/assets/images/guardian2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/gregister');
                          print("Veli button clicked!");
                        },
                        child: Text(
                          'VELİ',
                          style: TextStyle(
                            color: Color(0xFF15004D),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
