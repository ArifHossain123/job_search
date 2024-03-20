import 'package:flutter/material.dart';

class AppRegistration extends StatefulWidget {
  const AppRegistration({super.key});

  @override
  State<AppRegistration> createState() => _AppRegistrationState();
}

class _AppRegistrationState extends State<AppRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AppRegistration(),
              ),
            );
          },
        ),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Registration',
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 24,
                ),
              )
            ],
          ),
          Row(),
        ],
      ),
    );
  }
}
