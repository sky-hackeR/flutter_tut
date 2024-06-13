import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 70.0,
                    backgroundImage: AssetImage('images/jola.jpg'),
                  ),
                  const Text(
                    'Jolayemi Olugbenga David',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Junior Software Engineer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                    padding: const EdgeInsets.all(15.0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.phone, color: Colors.black, size: 30.0,),
                        Text('+234 808 2574 927'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                    padding: const EdgeInsets.all(15.0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.email, color: Colors.black),
                        Text('jolayemidavid6@gmail.com'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  // Container(
                  //   color: Colors.white,
                  //   margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                  //   padding: const EdgeInsets.all(15.0),
                  //   child: const Text(
                  //     'Passionate about building great software that impacts people\'s lives positively.',
                  //     textAlign: TextAlign.center,
                  //     style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 16.0,
                  //     ),
                  //   ),
                  // ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

