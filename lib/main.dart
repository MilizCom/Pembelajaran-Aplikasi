import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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
  int number = 0;
  String lol = "Pasti Bisa";
  String bol = "lu mau mati?!!";
  String ilc = "ILC2023";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ilc == "ILC2023"
                    ? Colors.black
                    : ilc == "Pasti Bisa"
                        ? Colors.blue
                        : Colors.red,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Text(
                  '$ilc',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: ilc == "lu mau mati?!!" ? 40 : 60,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      ilc = lol;
                    });
                  },
                  child: Text('Gas')),
              SizedBox(width: 50),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      ilc = bol;
                    });
                  },
                  child: Text('Skip'))
            ],
          )
        ],
      ),
    );
  }
}
