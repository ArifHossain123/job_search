import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_search/extra_information.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({super.key});

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      left: 20,
                    ),
                    child: Expanded(
                      child: Container(
                        height: 8,
                        width: 300,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 204, 204, 204),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 8,
                              width: width * 0.45,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      'Select gender',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                    height: height * 0.07,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey.shade400,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                          child: FaIcon(
                            Icons.person,
                            color: Color.fromARGB(255, 146, 10, 0),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 150, 196),
                            fontSize: 22,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: height * 0.07,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey.shade400,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                          child: FaIcon(
                            Icons.person,
                            color: Color.fromARGB(255, 146, 10, 0),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 150, 196),
                            fontSize: 22,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: height * 0.07,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey.shade400,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                          child: FaIcon(
                            Icons.person,
                            color: Color.fromARGB(255, 146, 10, 0),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 150, 196),
                            fontSize: 22,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Container(
          child: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 26,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ExtraInformation(),
            ),
          );
        },
      ),
    );
  }
}
