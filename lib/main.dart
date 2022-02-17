import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splashpage(duration: 5, gotopage: gonewpage()),
  ));
}

class iconfont extends StatelessWidget {
  Color color;
  String iconname;
  double size;

  iconfont({required this.color, required this.iconname, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(this.iconname,
        style: TextStyle(
          fontFamily: 'orilla',
          fontSize: this.size,
          color: this.color,
        ));
  }
}

class splashpage extends StatelessWidget {
  @override
  Widget gotopage;
  int duration;

  splashpage({required this.gotopage, required this.duration});

  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.gotopage));
    });

    return Scaffold(
      body: Container(
          color: Color.fromARGB(255, 228, 47, 40),
          child: Center(
              child: iconfont(
            color: Colors.white,
            size: 100,
            iconname: 'a',
          ))),
    );
  }
}

class gonewpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          color: Colors.cyan,
          child: Text(
            'Welcome To Second Page',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              wordSpacing: 2.0,
              color: Colors.white,
              fontSize: 30,
            ),
          )),
    );
  }
}
