import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:job_search/enter_information.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  Color _containerColor = Colors.white;
  User? user;
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
                    padding: const EdgeInsets.only(top: 30,
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
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 15,
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
                children: [
                  Column(
                    children: [
                      TextButton(
                        onPressed: () async {
                          await signInWithGoogle().then((value) {
                            setState(() {
                              user = value.user;
                            });
          
                            print(user!.displayName);
                            print(user!.email);
                          });
                        },
                        child: Container(
                          height: 55,
                          width: width * 0.93,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black,
                            ),
                          ),
                          child: const Center(
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                FaIcon(FontAwesomeIcons.googlePlusG),
                                Text(
                                  'Import from Google',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 55,
                          width: width * 0.93,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black,
                            ),
                          ),
                          child: const Center(
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                FaIcon(FontAwesomeIcons.facebook),
                                Text(
                                  'Import from Facebook',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //divider
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: const Divider(
                                thickness: 1,
                                color: Colors.black,
                                height: 40,
                              ),
                            ),
                          ),
                          const Text('OR'),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 10,
                                right: 20,
                              ),
                              child: const Divider(
                                height: 40,
                                thickness: 1,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const EnterYourInformation(),
                              ),
                            );
          
                            setState(() {
                              _containerColor =
                                  Color.fromARGB(255, 0, 255, 81);
                            });
                          },
                          child: Container(
                            height: 55,
                            width: width * 0.94,
                            decoration: BoxDecoration(
                              color: _containerColor,
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Enter Your Information',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 0, 173, 29),
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
              // Column(
              //   children: <Widget>[
              //     Row(
              //       children: <Widget>[
              //         ElevatedButton(
              //           onPressed: () {},
              //           child: Container(
              //             height: 40,
              //             width: width * .8,
              //             color: Colors.green,
              //           ),
              //         ),]
              // SignInButtonBuilder(
              //   mini: false,
              //   text: 'Sign in with Email',
              //   icon: Icons.email,
              //   onPressed: () {
              //    SignInButton(, onPressed: onPressed);
              //   },
              //   backgroundColor: Colors.blueGrey.shade700,
              // ),
          
              // SignInButton(
              //   Buttons.google,
              //   text: "Sign up with Google",
              //   onPressed: () {},
              // ),
          
              //   Padding(
              //     padding: const EdgeInsets.only(left: 20),
              //     child: InkWell(
              //       onTap: () {
              //         setState(() {
              //           _containerColor = Colors.blue;
              //         });
              //       },
              //       child: Container(
              //         height: 60,
              //         width: width * 0.9,
              //         decoration: BoxDecoration(
              //           color: _containerColor,
              //           border: Border.all(
              //             width: 1,
              //             color: Colors.grey,
              //           ),
              //           borderRadius: BorderRadius.circular(8),
              //         ),
              //         child: const Padding(
              //           padding: EdgeInsets.only(top: 15, left: 20),
              //           child: Text(
              //             'Accounting/Finance',
              //             style: TextStyle(
              //               fontSize: 18,
              //               color: Color.fromARGB(255, 172, 0, 0),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ],
            ],
          ),
          
          //last column
          const SizedBox(
            height: 200,
          ),
          Container(
            color: const Color.fromARGB(255, 254, 251, 251),
            height: height * 0.10,
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
                                  borderRadius: BorderRadius.circular(5),
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
    );
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
