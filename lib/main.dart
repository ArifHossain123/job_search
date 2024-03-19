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
    return const Scaffold();
  }
}
