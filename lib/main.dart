import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'myhomepage.dart';
import 'package:avatar_glow/avatar_glow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {
  static var myNewFont = GoogleFonts.pressStart2p(
      textStyle: TextStyle(color: Colors.black, letterSpacing: 3));
  static var myNewFontWhite = GoogleFonts.pressStart2p(
    textStyle: TextStyle(
      color: Colors.white,
      letterSpacing: 3,
    ),
  );

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(80.0),
                child: Container(
                  child: Text(
                    "X-O OYUN",
                    style: myNewFontWhite.copyWith(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: AvatarGlow(
                  endRadius: 140,
                  duration: Duration(seconds: 2),
                  glowColor: Colors.white,
                  repeat: true,
                  repeatPauseDuration: Duration(seconds: 1),
                  startDelay: Duration(seconds: 1),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.none),
                    shape: BoxShape.circle),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[900],
                      backgroundImage: AssetImage("lib/images/logo.png"),
                      radius: 80.0,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Container(
                  child: Text(
                    "@createdby Bega",
                    style: myNewFontWhite.copyWith(fontSize: 14),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ));
              },
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40, bottom: 60),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(30),
                    color: Colors.white,
                    child: Center(
                      child: Text("OYUNA BAŞLA",
                      style: myNewFont,),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
