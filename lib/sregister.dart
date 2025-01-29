import 'package:flutter/material.dart';
import 'package:troiacode17/register.dart';

void main() {
  runApp(SRegister());
}

class SRegister extends StatelessWidget {
  const SRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TroiaCode:17',
        home: SRegisterPage(),
        routes: {
          '/sregister': (context) {
            return SRegisterPage();
          },
            '/register': (context) => Register(),
        });
  }
}

class SRegisterPage extends StatefulWidget {
  const SRegisterPage({super.key});

  @override
  State<SRegisterPage> createState() => _SRegisterPageState();
}

class _SRegisterPageState extends State<SRegisterPage> {
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF15004D)),
          onPressed: () {
            Navigator.pushNamed(context, '/register');
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
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 200, left: 30.0, right: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Öğrenci Kayıt Ekranı',
                  style: TextStyle(
                      color: Color(0xFF15004D),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ad:",
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
                    SizedBox(height: 15),
                    Text(
                      "Soyad:",
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
                    SizedBox(height: 15),
                    Text(
                      "İl:",
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
                    SizedBox(height: 15),
                    Text(
                      "İlçe:",
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
                    SizedBox(height: 15),
                    Text(
                      "Okul:",
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
                    SizedBox(height: 15),
                    Text(
                      "Sınıf:",
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
                    SizedBox(height: 15),
                    Text(
                      "Kullanıcı Adı:",
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
                    SizedBox(height: 15),
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
                    SizedBox(height: 25),
                    Center(
                      child: Container(
                          width: 175,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF15004D),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextButton(
                              onPressed: () {
                                //Navigator.pushNamed(context, '/main');
                              },
                              child: Text(
                                'Kayıt Ol',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ),
                    SizedBox(height: 25),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
