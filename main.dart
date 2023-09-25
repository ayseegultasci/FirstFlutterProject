import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.pink,
        title: const Text("UI App with Flutter"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: const [
              DrawerHeader(
                child: Text("Drawer Header"),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 252, 136, 175),
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Welcome to My App!",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink,
                ),
                child: const Align(
                  alignment: Alignment(-2, -2),
                  child: Text(
                    "Widget 1",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: 90,
                height: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink,
                ),
                child: const Align(
                  alignment: Alignment(-2, -2),
                  child: Text(
                    "Widget 2",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start, // Center the button
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                 
                 
                ),
                child: const Text("OPEN Text Button"),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                ),
                child: const Text("CLOSE Text Button"),
              ),
              ], 
          ),
          SizedBox(height: 20),
          Row(
            
            children: <Widget>[
              Text(
                "Explanation:",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                  "This is my first Flutter Project :)",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
