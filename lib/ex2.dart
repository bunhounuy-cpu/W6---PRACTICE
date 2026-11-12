import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom buttons')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 12, // was 20
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check, color: Colors.white, size: 18),
                    SizedBox(width: 10),
                    Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10.0),
              // Secondary Button (Green, Icon Right)
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Time',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.access_time, color: Colors.white, size: 18),
                  ],
                ),
              ),

              const SizedBox(height: 10.0),

              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFE0DCE4), // light grey
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Account',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.account_tree, color: Colors.grey, size: 18),
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
