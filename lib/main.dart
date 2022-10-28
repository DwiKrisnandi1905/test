import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {

  final String title = 'Dwi Krisnandi';
  final String location = "Kab.Semarang, Jawa Tengah";
  final String description = 
      '''Hai kawan-kawan perkenalkan nama saya dwi krisnandi, panggilan Nandi, 
      lahir di Kab.Semarang dan sekarang ini saya berusia 19 tahun.Hobi saya 
      ada banyak salah satunya streaming film. Cukup sekian dari saya jika 
      ingin kenal lebih lanjut silahkan hubungi cp ini 083150045408.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profilku'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'image/profilku.jpeg',
            height: 270,
            width: 200,),
          Container(height: 15,),
          Column(
            children: [
              Container(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(this.title,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                    ),
                    Text(this.location,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),)
                ],
              ),
              Container(width: 100,),
            ]
          ),
          Container(
            padding: EdgeInsets.all(15),
          child: Text(
            this.description, 
            style: TextStyle(
              fontSize: 18,
            ),
          softWrap: true,),),
        ],
      ),
    );

  }
}