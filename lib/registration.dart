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
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              const Row(
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
              const SizedBox(
                height: 30,
              ),
              const Row(
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
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 360,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 100,
                    width: 360,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
