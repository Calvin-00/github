import 'package:github/Screens.dart';
import 'package:flutter/material.dart';

import 'NavBar.dart';
import 'calculator_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex=0;
  final screens=[const Home_Screen(),const Call_Calculator(),const About_Screen()];
  List<String> screentitle=['Home','Calculator','About'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey,
        title:  Text(
          screentitle[currentindex],
          // 'Home',
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
      drawer: NavBar(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        type: BottomNavigationBarType.shifting,
        fixedColor: Colors.black,//if it is shifting
        iconSize: 30,
        currentIndex: currentindex,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        onTap: (value) {
  setState(() {
    currentindex = value;
  });

  // Add logic to navigate to the Calculator screen
  if (currentindex == 1) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Call_Calculator()));
  }
},

        items: const[
        BottomNavigationBarItem(backgroundColor: Colors.blueGrey, icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(backgroundColor: Colors.blueGrey, icon: Icon(Icons.calculate),label: 'Calculator'),
        BottomNavigationBarItem(backgroundColor: Colors.blueGrey, icon: Icon(Icons.info),label: 'About'),
      ]),
      body: IndexedStack(index: currentindex,children: screens,)
    );
  }
}