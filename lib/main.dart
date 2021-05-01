import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'Portfolio App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Portfolio App',
          ),
          backgroundColor: Colors.indigo,
          elevation: 2,
        ),
        body: _buildContent(),
      ),
    );
  }
}

Widget _buildContent() {
  return Padding(
    padding: EdgeInsets.all(6),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            child: Image.asset(
              'assets/images/pic.jpg',
              height: 200,
            ),
          ),
        ),
        Text(
          'Abolarinwa Quadri',
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w600,
            fontSize: 36,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 6),
        Container(
          color: Colors.lightGreen,
          child: SizedBox(
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                'Web dev, Mobile dev, Graphixx',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            height: 36,
          ),
        ),
        SizedBox(height: 6),
        Container(
          color: Colors.lightGreen.shade200,
          child: SizedBox(
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                '    Coding isn\'t as easy as many thinks, that\'s why I wanna be a coder and show to them that I got this\n    The more reason I fight it through to the end with hope\n    As time goes on, I will find it all easy and give testimonies.',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            height: 200,
          ),
        ),
        SizedBox(height: 6),
        Container(
          color: Colors.green,
          child: SizedBox(
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                'Tel.: +234 815 766 4828\nEmail: boffinbee@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            height: 62,
          ),
        ),
        SizedBox(height: 6),
      ],
    ),
  );
}
