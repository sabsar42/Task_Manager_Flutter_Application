import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Todo APP'),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        // Set the primary color
        backgroundColor: Colors.yellow,
        // Set the background color for all Scaffold widgets
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            foregroundColor: Colors.deepOrange,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.yellow, // Set the background color for AppBar
          elevation: 2,
          shadowColor: Colors.brown,
        ),
      ),
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
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        titleSpacing: 12,
        title: Text(
          " TASK MANAGER ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontStyle: FontStyle.normal,
            color: Colors.brown,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 150),
          Center(
            child: Image.asset(
              'assets/images/to-do-list.png',
              // Replace with your image file path
              width: 270, // Set the width of the image
              height: 270, // Set the height of the image
            ),
          ),
          SizedBox(height: 70),
          Container(
            alignment: Alignment.center, // Center the TextButton
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(),
                    ));
              },
              child: Text(
                'Start',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                elevation: 9,
                // Set the background color
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                // Set padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70), // Set border radius
                ),
              ),
            ), // Text for the button
          ),
        ],
      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context), // Pass the theme from the current context
      child: Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: Text(
            'Task List',
            style: TextStyle(color: Colors.brown, fontSize: 25),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.task,
                color: Colors.deepOrange,
                size: 28,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Apples'),
                    leading: Icon(Icons.check_box_outlined),
                  ),
                ],
              ),
            ),
            FloatingActionButton(
              elevation: 9,
              onPressed: () {
                // Add your onPressed action here
              },
              child: Icon(Icons.add), // Icon for the FAB
            ),
          ],
        ),
      ),
    );
  }
}

