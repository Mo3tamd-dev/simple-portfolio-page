import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                image: DecorationImage(image: AssetImage("assets/images/portfolio.png"),
                fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 34),
            Text("Hi, I'm Mahmoud, \nFlutter Developer",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(33, 36, 61, 1),
            ),),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 24, 8, 24),
              child: Text("I'm currently learning Flutter development \nand building practical projects to improve \nmy skills and gain hands-on experience.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(33, 36, 61, 1),
              ),),
            ),
            ElevatedButton(onPressed: ()async{
              final Uri url = Uri.parse(
                  'https://www.linkedin.com/in/mahmoud-mo3tamd-1bb709449/'
              );
              await launchUrl(
                url,
                mode: LaunchMode.externalApplication,
              );
            },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Color.fromRGBO(255, 100, 100, 1),
                  foregroundColor: Colors.white,
                  fixedSize: Size(208, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)
                  )
                ),
                child: Text("Let's Connect",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),))
          ],
        ),
        
      ),
    );
  }
}

