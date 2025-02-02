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
  runApp(MyRights());
}

class MyRights extends StatelessWidget {
  const MyRights({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TroiaCode:17',
        home: MyRightsPage(),
        initialRoute: '/',
        routes: {
          '/myrights': (context) {
            return MyRightsPage();
          },
          '/mainpage': (context) => MainPage(),
        });
  }
}

class MyRightsPage extends StatefulWidget {
  const MyRightsPage({super.key});

  @override
  State<MyRightsPage> createState() => _MyRightsPageState();
}

class _MyRightsPageState extends State<MyRightsPage> {
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
            'lib/assets/images/protest.png',
            height: 100,
            width: 100,
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.all(20.0),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 200),
                Container(
                  child: Text('Öğrenci',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF15004D))),
                ),
                SizedBox(height: 10),
                Container(
                    height: 720,
                    width: 400,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Text(
                        '1. Eğitim Hakkı: \nÖğrenciler, nitelikli eğitim alma hakkına sahiptir. Devlet, her öğrencinin eğitim almasını ve eğitime erişim sağlamasını güvence altına alır. (Türk Anayasası Madde:42)\n\n'
                        '2. Özgür İfade ve Düşünce Hakkı: \nÖğrenciler, düşüncelerini özgürce ifade etme hakkına sahiptir. Eğitimde, öğrencilerin farklı düşünceleri ifade etmeleri ve kendilerini ifade etmeleri teşvik edilmelidir. (Türk Anayasası Madde:25)\n\n'
                        '3. Eşitlik Hakkı: \nÖğrenciler, ırk, dil, din, cinsiyet gibi sebeplerle ayrımcılığa uğramama hakkına sahiptir. Eğitimde fırsat eşitliği sağlanmalıdır. (Türk Anayasası Madde:10)\n\n'
                        '4. Özel Eğitim Hakkı: \nEngelli bireyler için özel eğitim hakları garanti altına alınmıştır. Devlet, engelli bireylerin özel eğitim almasını sağlamalıdır.\n\n'
                        '5. Çocuk Hakları Sözleşmesi: \nBirleşmiş Milletler Çocuk Hakları Sözleşmesi, her çocuğun ücretsiz ve zorunlu eğitime erişmesini garanti eder. Ayrıca, çocuğun yüksek eğitim standartlarına ulaşabilmesi için gerekli koşulları oluşturmayı hedefler.\n\n'
                        '6. Öğretim Programı Hakkı: \nÖğrenciler, belirli bir müfredat ve öğretim programına uygun olarak eğitim görme hakkına sahiptir. Öğrencilerin bu programda yer alan haklarına saygı gösterilmelidir. (Türk Anayasası Madde:42)\n\n',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal))),
                SizedBox(height: 20),
                Container(
                  child: Text('Hijyen',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF15004D))),
                ),
                SizedBox(height: 10),
                Container(
                    height: 410,
                    width: 400,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Text(
                        '1. Sağlık Hakkı: \nHerkes, sağlıklı ve dengeli bir çevrede yaşama hakkına sahiptir. Devlet, bu hakkın kullanılmasını sağlamak için gerekli tedbirleri alır. (Türk Anayasası Madde:56)\n\n'
                        '2. Çocukların Sağlık ve Hijyen Hakkı: \nDevlet, çocukların sağlıklı büyümesi ve gelişmesi için gerekli tüm önlemleri almak zorundadır. Bu kapsamda, okullarda hijyen koşullarının sağlanması ve çocukların sağlıklarını riske atacak durumların önlenmesi gereklidir. (Birleşmiş Milletler Çocuk Hakları Sözleşmesi, Madde 24)\n\n'
                        '3. Okullarda Hijyen Standartları: \nDevlet, okullarda hijyenik standartları belirlemek ve denetlemekle yükümlüdür. Okullarda temiz su, düzenli temizlik ve sağlıklı ortamlar sağlanmalıdır. (Milli Eğitim Bakanlığı Yönetmelikleri)\n\n',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal))),
                SizedBox(height: 20),
                Container(
                  child: Text('Güvenlik',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF15004D))),
                ),
                SizedBox(height: 10),
                Container(
                    height: 380,
                    width: 400,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Text(
                        '1. Eğitimde Güvenlik Hakkı: \nHerkes, eğitim sırasında fiziksel, psikolojik ve duygusal güvenlik içerisinde olma hakkına sahiptir. (Türk Anayasası Madde:42)\n\n'
                        '2. Okul Güvenliği: \nOkullarda güvenlik, öğrencilerin fiziksel, psikolojik ve sağlıklarını tehdit edecek durumların önlenmesi için sağlanmalıdır. Okul yönetimleri, güvenliği sağlamakla yükümlüdür. (Milli Eğitim Bakanlığı Okul Güvenliği Yönetmeliği)\n\n'
                        '3. Çocukların Güvenliği: \nDevlet, çocukların fiziksel, zihinsel ve duygusal güvenliğini sağlamak için gerekli tüm önlemleri almak zorundadır. (Birleşmiş Milletler Çocuk Hakları Sözleşmesi, Madde 19)\n\n',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal))),
                SizedBox(height: 20),
                Container(
                  child: Text('Öğretmen',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF15004D))),
                ),
                SizedBox(height: 10),
                Container(
                    height: 550,
                    width: 400,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Text(
                        '1. Çalışma Hakkı ve Güvenliği: \nÖğretmenler, sağlıklı ve güvenli bir çalışma ortamına sahip olma hakkına sahiptir. Devlet, öğretmenlerin çalışma koşullarını düzenlemeli ve güvenliklerini sağlamalıdır. (Türk Anayasası Madde:50)\n\n'
                        '2. Meslek Etiği ve Saygınlık Hakkı: \nÖğretmenler, mesleklerini onurlu bir şekilde icra etme hakkına sahiptir. Ayrıca, toplumda saygı görmek ve mesleklerini güven içinde icra etmek için gerekli önlemler alınmalıdır. (Türk Anayasası Madde: 2)\n\n'
                        '3. Eğitimde Katılım Hakkı: \nÖğretmenler, eğitim politikalarına ve okul yönetimine katılma hakkına sahiptir. (Türk Anayasası Madde: 128)\n\n'
                        '4. Özgürlük ve Sendika Kurma Hakkı: \nÖğretmenler, kendi çıkarlarını savunmak ve çalışma koşullarını iyileştirmek için sendika kurma ve üyelik hakkına sahiptir. (Türk Anayasası Madde:51)\n\n'
                        '5. Eğitim Hakkı: \nÖğretmenler, kendi mesleklerinde gelişebilmek ve daha iyi bir eğitim verebilmek için gerekli eğitimleri alma hakkına sahiptir. (Türk Anayasası Madde:42)\n\n',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal))),
                SizedBox(height: 20),
                Container(
                  child: Text('Veli',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF15004D))),
                ),
                SizedBox(height: 10),
                Container(
                    height: 550,
                    width: 400,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Text(
                        '1. Eğitim Hakkı: \nVeliler, çocuklarının eğitim hakkının korunmasını sağlamak için gerekli önlemleri alma hakkına sahiptir. Eğitimde velilerin bilgilendirilmesi, onların eğitim sürecine katılımını teşvik eder. (Türk Anayasası Madde:42)\n\n'
                        '2. Bilgi Edinme Hakkı: \nVeliler, çocuklarının eğitim durumu ve okul başarısı hakkında bilgi edinme hakkına sahiptir. Okul yönetimleri, velilere çocuklarının gelişimi hakkında düzenli olarak bilgilendirme yapmalıdır. (Milli Eğitim Bakanlığı Yönetmelikleri)\n\n'
                        '3. Eğitim Kararlarına Katılma Hakkı: \nVeliler, çocuklarının eğitimi ile ilgili karar süreçlerine katılma hakkına sahiptir. Bu, okul yönetimleri tarafından sağlanmalıdır. (Türk Anayasası Madde:42)\n\n'
                        '4. Aile Katılımı Hakkı: \nVeliler, çocuklarının eğitimine ilişkin aile katılım programlarına dahil olma hakkına sahiptir. Bu tür programlar, velilerin eğitimdeki etkilerini artırmak için önemlidir. (Milli Eğitim Bakanlığı Aile Katılımı Yönetmeliği)\n\n',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal))),
                SizedBox(height: 20),
              ],
            ))));
  }
}
