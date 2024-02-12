import 'package:flutter/material.dart';

import 'button_values.dart';
import 'calculator_screen.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the start
            children: [
              SizedBox(height: 25),
              Text(
                'Hello, and welcome to My App! We are thrilled to have you here. Dive into a world of possibilities and explore the incredible features that await you. Feel free to make yourself at home and enjoy the journey!',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Add some spacing between the paragraphs
              Row(
                // Row to align the text at the start
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the start
                
              ),
            ],
          ),
        ),
      ),
    );

  }
}

class Call_Calculator extends StatelessWidget {
  const Call_Calculator({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: CalculatorScreen(), // Use the CalculatorScreen widget here
    );
  }
}

class About_Screen extends StatelessWidget {
  const About_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the start
            children: [
              
              SizedBox(height: 25),
              Text(
                "Explore the endless possibilities with our innovative app, designed to simplify your daily tasks and enhance your digital experience. From intuitive features to seamless navigation, we strive to deliver a user-centric platform that adapts to your needs.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Add some spacing between the paragraphs
              Row(
                // Row to align the text at the start
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the start
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}

