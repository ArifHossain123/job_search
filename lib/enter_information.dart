import 'package:flutter/material.dart';

class EnterYourInformation extends StatefulWidget {
  const EnterYourInformation({super.key});

  @override
  State<EnterYourInformation> createState() => _EnterYourInformationState();
}

class _EnterYourInformationState extends State<EnterYourInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: Column(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Container(
          child: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 26,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
