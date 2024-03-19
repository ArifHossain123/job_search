import 'package:flutter/material.dart';
//import 'package:job_search/app_bar.dart';

void main() {
  runApp(const JobSearch());
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
      appBar: AppBar(
        title: const Text('AppBar Separated from Main'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.abc),
          ),
        ],
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const Icon(
              Icons.alarm,
            ),
          ),
          //Checkbox(value: value, onChanged: onChanged)
        ],
      ),
    );
  }
}
