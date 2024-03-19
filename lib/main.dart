import 'package:flutter/material.dart';
import 'package:job_search/bd_job_search.dart';
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
        backgroundColor: Colors.blueGrey,
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BdJobSearch(),
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

class MyWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  const MyWidget({
    super.key,
    required this.title,
    required this.backgroundColor,
  });
  @override
  Size get preferredSize => Size.fromHeight(40);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
    );
  }
}
