import 'package:cloud_firestore/cloud_firestore.dart';
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
  runApp(CreateComplaint());
}

class CreateComplaint extends StatelessWidget {
  const CreateComplaint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TroiaCode:17',
        home: CreateComplaintPage(),
        initialRoute: '/',
        routes: {
          '/createcomplaint ': (context) {
            return CreateComplaintPage();
          },
          '/mainpage': (context) => MainPage(),
        });
  }
}

class CreateComplaintPage extends StatefulWidget {
  const CreateComplaintPage({super.key});
  @override
  State<CreateComplaintPage> createState() => _CreateComplaintPageState();
}

class _CreateComplaintPageState extends State<CreateComplaintPage> {
  final TextEditingController baslikController = TextEditingController();
  final TextEditingController konuController = TextEditingController();
  final TextEditingController sikayetController = TextEditingController();


  Future<void> addData() async {
    FirebaseFirestore nesne = FirebaseFirestore.instance;
    CollectionReference sikayetlerCol = nesne.collection('sikayetler');

    Map<String, dynamic> yeniSikayetler = {
      'Başlık': baslikController.text,
      'KONU': konuController.text,
      'Şikayetinizi yazınız.': sikayetController.text,


    };
    await sikayetlerCol.add(yeniSikayetler);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        title: Image.asset(
          'lib/assets/images/feedback.png',
          height: 70,
          width: 70,
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 150),
              Container(
                padding: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black),
                ),
                child: TextField(
                  controller: baslikController,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Başlık:'),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black),
                ),
                child: TextField(
                  controller: konuController,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'KONU:'),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 500,
                padding: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black),
                ),
                child: TextField(
                  controller: sikayetController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Şikayetinizi yazınız.'),
                ),
              ),
              Row(
                children: [
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: IconButton(
                          icon: Icon(Icons.attach_file, color: Colors.blue),
                          onPressed: () {
                            // Dosya seçme işlemi burada olacak
                          },
                        ),
                      )),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: IconButton(
                          icon: Icon(Icons.mic, color: Colors.blue),
                          onPressed: () {
                            // Dosya seçme işlemi burada olacak
                          },
                        ),
                      )),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: IconButton(
                          icon: Icon(Icons.photo_camera, color: Colors.blue),
                          onPressed: () {
                            // Dosya seçme işlemi burada olacak
                          },
                        ),
                      )),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () async {
                      await addData();
                      Navigator.pushNamed(context, '/mainpage');
                    },
                    child: Text(
                      'Gönder',
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
        ),
      ),
    );
  }
}
