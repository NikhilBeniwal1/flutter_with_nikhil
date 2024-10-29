import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Developer Homepage',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter with Nikhil"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue.shade800,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/an.jpg'), // Add your image here
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Hey, this is Nikhil!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade800,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "I’m the developer behind Random Chat, an app designed to connect people with random strangers for engaging conversations. "
                      "My passion for creating innovative applications led me to build this platform to make connecting with new people fun and seamless.",
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
                SizedBox(height: 20),
                Text(
                  "If you have an app idea and want to bring it to life, feel free to reach out! "
                      "I'm always open to new challenges and collaborations. Whether it's brainstorming or development, "
                      "I’d love to help turn your vision into reality.",
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
                SizedBox(height: 30),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Contact me:",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {
                          // Optional: Add functionality to open email app
                        },
                        child: Text(
                          "FlutterWithNikhil@gmail.com",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
