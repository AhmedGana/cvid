import 'package:flutter/material.dart';
import 'cv.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Project(),
    );
  }
}

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  bool showText = false;
  bool showimage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 242, 245),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 76, 151),
        title: Text(
          "Student CV",
          style: TextStyle(fontSize: 27, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 29,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShowInfo()),
                );
              },
              child: CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage('assets/images/3.jpg'),
              ),
            ),
            Container(
            // color: Color.fromARGB(255, 6, 76, 151),
              width: 250,
              margin: EdgeInsets.fromLTRB(40, 40, 00, 50),
              child: Text(
                " Click On Photo To Show CV ",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                //  fontFamily: 'bebas'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
