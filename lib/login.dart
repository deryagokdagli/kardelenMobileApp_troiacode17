import 'package:troiacode17/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TroiaCode:17',
        home: LoginPage(),
        initialRoute: '/',
        routes: {
          '/login': (context) {
            return LoginPage();
          },
          '/register': (context) => Register(),
        });
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _sifre = ""; //textfield için değişkenimi oluşturdum
  TextEditingController _sifreController =
  TextEditingController(); //controller oluşturma
  @override //initstate: durum ilk başladığında ne olsun yani durum başlangıcı
  void initState() {
    // TODO: implement initState
    super.initState();
    _sifreController.addListener(() {
      setState(() {}); //her seferinde çalıştırıyor
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: Colors.white,
          title: Text('KARDELEN',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF15004D),
                fontSize: 40,
                letterSpacing: 0.5,
              )),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 300),
              Text('GİRİŞ',
                  style: TextStyle(
                      color: Color(0xFF15004D),
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kullanıcı adı:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors
                          .black, // Yazı rengi (Tema rengine göre değiştirebilirsin)
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey[100], // Arka plan rengi
                      borderRadius:
                      BorderRadius.circular(5), // Köşeleri yuvarla
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextField(
                        decoration:
                        InputDecoration(border: InputBorder.none)),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Şifre:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors
                          .black, // Yazı rengi (Tema rengine göre değiştirebilirsin)
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey[100], // Arka plan rengi
                      borderRadius:
                      BorderRadius.circular(5), // Köşeleri yuvarla
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextField(
                        obscureText: true,
                        controller: _sifreController,
                        onChanged: (_ekranDegeri) {
                          setState(() {
                            _sifre =
                                _ekranDegeri; //kullanıcı textfielda bir şeyler yazıyor bunlar ekrandegerinde, _sifre _ekrandegerine atadım, setstate her seferinde bunu güncelle demek
                          });
                        },
                        onTap: () {
                          print('Texfield\'a tıklandı');
                        },
                        onEditingComplete: () {
                          print('Textfield\'a yazım tamamlandı.');
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.lock,
                            color: Color(0xFF15004D),
                          ),
                        )),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Container(
                        width: 400,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF15004D),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                            onPressed: () {
                              //Navigator.pushNamed(context, '/main');
                            },
                            child: Text(
                              'Giriş yap',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                        width: 300,
                        height: 40,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/register');
                            },
                            child: Text(
                              'Henüz bir hesabınız yok mu? Kayıt ol.',
                              style: TextStyle(
                                  color: Colors.cyan,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
