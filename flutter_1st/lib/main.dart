import 'dart:math';

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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Flutter first app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.title),
        title: const Text("First flutter app"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onLongPress: () {
                      print("Image clicked");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.black)),
                      height: 150,
                      width: 150,
                      margin: const EdgeInsetsDirectional.all(10),
                      padding: const EdgeInsets.all(10),
                      child: const Image(
                        image: AssetImage('assets/images/img1.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black)),
                    height: 200,
                    width: 200,
                    padding: const EdgeInsets.all(10),
                    child: const Image(
                      image: AssetImage('assets/images/img2.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('assets/images/img3.jpg'),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('assets/images/img4.jpg'),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: const Text(
              "String testing font size",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: const Text(
              "String testing font style",
              style: TextStyle(fontSize: 20, fontFamily: 'Mynewfont'),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 100,
            height: 50,
            child: const Card(
              shadowColor: Colors.black,
              borderOnForeground: true,
              elevation: 5,
              child: Text("Card layout", style: TextStyle(fontSize: 20)),
            ),
          )
        ],
      ),
    );
  }
}
