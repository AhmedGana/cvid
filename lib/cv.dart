import 'package:flutter/material.dart';

class ShowInfo extends StatelessWidget {
  const ShowInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 242, 245),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 76, 151),
        title: Text(
          "Student CV",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 28,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
          ),
          Container(
            child: CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/images/3.jpg'),
            ),
          ),
          ///////////////////////////////
          Container(
            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
            width: 400,
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Text(
                    "Name :Ahmed said gana",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        backgroundColor:Color.fromARGB(255, 229, 242, 245)),
                  ),
                ),
                Card(
                  child: Text(
                    "ID :5181134",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      backgroundColor:Color.fromARGB(255, 229, 242, 245),
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      // color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
