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
        toolbarHeight: 35,
        backgroundColor: Colors.white,
        leading: IconButton(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
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
          Column(
            children: [
              Row(
                children: [
                  Text(
                    '  Registration',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 26,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  Text(
                    '  Please choose your relevant type',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
