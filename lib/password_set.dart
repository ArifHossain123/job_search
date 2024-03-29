import 'package:flutter/material.dart';

class PasswordSet extends StatefulWidget {
  const PasswordSet({super.key});

  @override
  State<PasswordSet> createState() => _PasswordSetState();
}

class _PasswordSetState extends State<PasswordSet> {
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
                              width: width * 0.60,
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
                      'Provide your Mobile No And Email\nAddress (atleast one)',
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

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    hintText: 'Bangladesh (88)',
                    labelText: 'Country/Region Code',
                    floatingLabelStyle: TextStyle(
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 8,
                  bottom: 5,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Mobile Number',
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 15,
                        right: 10,
                      ),
                      child: const Divider(
                        color: Colors.black,
                        thickness: 1,
                        height: 50,
                      ),
                    ),
                  ),
                  const Text('OR'),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),
                      child: const Divider(
                        color: Colors.black,
                        thickness: 1,
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 8,
                ),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Email',
                  ),
                ),
              ),
              /////////
              Column(
                children: [
                  ///////
                  const SizedBox(
                    height: 250,
                  ),
                  Container(
                    color: const Color.fromARGB(255, 254, 251, 251),
                    height: height * 0.12,
                    width: width * 0.94,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 110,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const Row(
                            children: [
                              Text(
                                '   For any help',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: 'Call at   ',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                      ),
                                    ),
                                    WidgetSpan(
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: const Icon(
                                          Icons.call,
                                          size: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const TextSpan(
                                      text: '  10101',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
              builder: (context) => const PasswordSet(),
            ),
          );
        },
      ),
    );
  }
}
