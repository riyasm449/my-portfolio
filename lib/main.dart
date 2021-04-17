import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'utilities/app-theme.dart';
import 'utilities/commons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Riyas',
            style: TextStyle(
                fontFamily: 'Nunito',
                color: Commons.bgColor,
                fontWeight: FontWeight.w900,
                fontSize: 20),
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            firstPage(),
            seceondpage(),
          ],
        ));
  }

  Widget seceondpage() {
    return Column(
      children: [
        tileCard(
          title: Text(
            'Description',
            style: TextStyle(
                fontFamily: 'Nunito',
                color: Commons.bgColor,
                fontWeight: FontWeight.w900,
                fontSize: 20),
          ),
          subTitle: Text(
            '''   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
            textAlign: TextAlign.justify,
            style: TextStyle(
                fontFamily: 'Nunito',
                color: Commons.textColor,
                fontWeight: FontWeight.w600,
                fontSize: 16),
          ),
        ),
        tileCard(
            title: Text(
              'Contact details',
              style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Commons.bgColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 20),
            ),
            subTitle: _contactDetails()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  html.window.location.href = "https://www.google.com";
                },
                child: Image.asset(
                  'assets/images/instagram.png',
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  html.window.location.href = "https://www.google.com";
                },
                child: Image.asset(
                  'assets/images/facebook.png',
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  html.window.location.href = "https://www.google.com";
                },
                child: Image.asset(
                  'assets/images/whatsapp.png',
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _contactDetails() {
    return (MediaQuery.of(context).size.width > 800)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 350),
                child: ListTile(
                  leading: Icon(
                    Icons.call_outlined,
                    color: Commons.bgColor,
                  ),
                  onTap: () {
                    html.window.location.href = "https://www.google.com";
                  },
                  title: Text(
                    '(+91) 93611 44746',
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        color: Commons.textColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 16),
                  ),
                ),
              ),
              Container(
                constraints: BoxConstraints(maxWidth: 350),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Commons.bgColor,
                  ),
                  onTap: () {
                    html.window.location.href = "https://www.google.com";
                  },
                  title: Text(
                    'riyasm449@gmail.com',
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        color: Commons.textColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ),
              ),
            ],
          )
        : Column(
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 400),
                child: ListTile(
                  leading: Icon(
                    Icons.call_outlined,
                    color: Commons.bgColor,
                  ),
                  onTap: () {
                    html.window.location.href = "https://www.google.com";
                  },
                  title: Text(
                    '(+91) 93611 44746',
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        color: Commons.textColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 16),
                  ),
                ),
              ),
              Container(
                constraints: BoxConstraints(maxWidth: 400),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Commons.bgColor,
                  ),
                  onTap: () {
                    html.window.location.href = "https://www.google.com";
                  },
                  title: Text(
                    'riyasm449@gmail.com',
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        color: Commons.textColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ),
              ),
            ],
          );
  }

  Widget tileCard({Widget title, Widget subTitle}) {
    return Container(
      constraints: BoxConstraints(maxWidth: 800),
      child: ListTile(
        title: title ?? Container(),
        subtitle: subTitle ?? Container(),
      ),
    );
  }

  Widget firstPage() {
    return (MediaQuery.of(context).size.width > 700)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: profileImage(),
              ),
              basicText(start: true),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: profileImage(),
              ),
              basicText(start: true),
            ],
          );
  }

  Widget basicText({bool start}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 58,
        width: 220,
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Hi, I\'am ',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Commons.textColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                Text(
                  'Mohamed Riyas',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Commons.bgColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 20),
                ),
              ],
            ),
            Text(
              'Flutter developer',
              style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Commons.textColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }

  Widget profileImage() {
    return Container(
      width: 250,
      height: 250,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: AssetImage('assets/images/profile.jpg'))),
          ),
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              'assets/images/circle.png',
              color: Commons.bgColor,
            ),
          ),
        ],
      ),
    );
  }
}
