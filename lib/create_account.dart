//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  // Color _containerColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: const [],
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
                          color: const Color.fromARGB(255, 204, 204, 204),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 8,
                              width: width * 0.3,
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
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: SizedBox(
                      height: 60,
                      child: Row(
                        children: [
                          Text(
                            'Create Your Free BdJobs Account',
                            style: TextStyle(
                              fontSize: 20,
                            ),
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
                          // SignInButtonBuilder(
                          //   mini: false,
                          //   text: 'Sign in with Email',
                          //   icon: Icons.email,
                          //   onPressed: () {
                          //    SignInButton(, onPressed: onPressed);
                          //   },
                          //   backgroundColor: Colors.blueGrey.shade700,
                          // ),

                          SignInButton(
                            Buttons.google,
                            text: "Sign up with Google",
                            onPressed: () {},
                          ),

                          // Padding(
                          //   padding: const EdgeInsets.only(left: 20),
                          //   child: InkWell(
                          //     onTap: () {
                          //       setState(() {
                          //         _containerColor = Colors.blue;
                          //       });
                          //     },
                          //     child: Container(
                          //       height: 60,
                          //       width: width * 0.9,
                          //       decoration: BoxDecoration(
                          //         color: _containerColor,
                          //         border: Border.all(
                          //           width: 1,
                          //           color: Colors.grey,
                          //         ),
                          //         borderRadius: BorderRadius.circular(8),
                          //       ),
                          //       child: const Padding(
                          //         padding: EdgeInsets.only(top: 15, left: 20),
                          //         child: Text(
                          //           'Accounting/Finance',
                          //           style: TextStyle(
                          //             fontSize: 18,
                          //             color: Color.fromARGB(255, 172, 0, 0),
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      Container(
                        color: const Color.fromARGB(255, 254, 251, 251),
                        height: height * 0.24,
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
