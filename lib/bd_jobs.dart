import 'package:flutter/material.dart';
import 'package:job_search/create_account.dart';

class Jobs extends StatefulWidget {
  const Jobs({super.key});

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  Color _containerColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    // final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Expanded(
                      child: Container(
                        height: 8,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 204, 204, 204),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 8,
                              width: width * 0.2,
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
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: SizedBox(
                      height: 60,
                      child: Row(
                        children: [
                          Text(
                            'Select Skills from the list',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  _containerColor = Colors.blue;
                                });
                              },
                              child: Container(
                                height: 60,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                  color: _containerColor,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 15, left: 20),
                                  child: Text(
                                    'Accounting/Finance',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 172, 0, 0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  _containerColor = Colors.blue;
                                });
                              },
                              child: Container(
                                height: 60,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                  color: _containerColor,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 15, left: 20),
                                  child: Text(
                                    'Accounting/Finance',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 172, 0, 0),
                                    ),
                                  ),
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
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateAccount(),
            ),
          );
        },
      ),
    );
  }
}
