import 'package:flutter/material.dart';
import 'package:job_search/app_bar.dart';
import 'package:job_search/registration.dart';

void main() {
  runApp(
    const JobSearch(),
  );
}

class JobSearch extends StatelessWidget {
  const JobSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JobSearchAppBar(),
    );
  }
}

class JobSearchAppBar extends StatelessWidget {
  const JobSearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AppRegistration(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.lightBlue,
              child: const Text(
                'Another Page',
              ),
            ),
          ),

          //Checkbox(value: value, onChanged: onChanged)
        ],
      ),
    );
  }
}
