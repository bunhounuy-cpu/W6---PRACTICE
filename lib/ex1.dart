import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('My Hobbies'),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // full width
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.travel_explore, color: Colors.white),
                    SizedBox(width: 20),
                    Text(
                      'Travelling',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10.0),

              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.skateboarding, color: Colors.white),
                    SizedBox(width: 20),
                    Text(
                      'Skating',
                      style: TextStyle(color: Colors.white, fontSize: 24),
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
