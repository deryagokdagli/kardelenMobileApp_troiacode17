import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:troiacode17/mainpage.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Uygulama başlatılmadan önce Firebase'i başlat
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Firebase'i başlat
  runApp(Bin());
}

class Bin extends StatelessWidget {
  const Bin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TroiaCode:17',
        home: BinPage(),
        initialRoute: '/',
        routes: {
          '/bin ': (context) {
            return BinPage();
          },
          '/mainpage': (context) => MainPage(),
        });
  }
}

class BinPage extends StatefulWidget {
  const BinPage({super.key});

  @override
  State<BinPage> createState() => _BinPageState();
}

class _BinPageState extends State<BinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.white,
        title: Text(
          'Çöp Kutusu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF15004D),
            fontSize: 40,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF15004D)),
          onPressed: () {
            Navigator.pushNamed(context, '/mainpage');
            print("Geri button clicked!");
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 200),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Öğeler arasında eşit boşluk bırakır
              children: [
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      child: Image.asset('lib/assets/images/bin.png'),
                    ),
                    SizedBox(height: 5),
                    Text('Ek Ücret Talebi',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      child: Image.asset('lib/assets/images/bin.png'),
                    ),
                    SizedBox(height: 5),
                    Text('Çevre Sorunu',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      child: Image.asset('lib/assets/images/bin.png'),
                    ),
                    SizedBox(height: 5),
                    Text('Gıda Zehirlenmesi',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
