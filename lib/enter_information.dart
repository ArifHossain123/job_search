import 'package:flutter/material.dart';
import 'package:job_search/gender_selection.dart';

class EnterYourInformation extends StatefulWidget {
  const EnterYourInformation({super.key});

  @override
  State<EnterYourInformation> createState() => _EnterYourInformationState();
}

class _EnterYourInformationState extends State<EnterYourInformation> {
  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30,
                      left: 40,
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
                              width: width * 0.4,
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
              builder: (context) => const SelectGender(),
            ),
          );
        },
      ),
    );
  }
}
