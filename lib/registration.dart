import 'package:flutter/material.dart';

class AppRegistration extends StatefulWidget {
  const AppRegistration({super.key});

  @override
  State<AppRegistration> createState() => _AppRegistrationState();
}

class _AppRegistrationState extends State<AppRegistration> {
  @override
  Widget build(BuildContext context) {
    //  final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35,
        backgroundColor: Colors.white,
        leading: IconButton(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AppRegistration(),
              ),
            );
          },
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              const Row(
                children: [
                  Text(
                    '  Registration',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 26,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: <Widget>[
                  Text(
                    '  Please choose your relevant type',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    height: 130,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 20,
                          child: Material(
                            child: Container(
                              height: 130.0,
                              width: width * 0.9,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 243, 243, 243),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 201, 201, 201)
                                            .withOpacity(.6),
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: const Offset(-3, 3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 20,
                          child: Container(
                            child: ClipPath(
                              clipper: CustomClipPath(),
                              child: Container(
                                height: 100,
                                width: width * 0.25,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 14, 158, 19),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(100),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 130,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 20,
                            child: Material(
                              child: Container(
                                height: 130.0,
                                width: width * 0.93,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 243, 243, 243),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color.fromARGB(
                                              255, 201, 201, 201)
                                          .withOpacity(.6),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                      offset: const Offset(-3, 3),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 20,
                            child: Container(
                              child: ClipPath(
                                clipper: CustomClipPath(),
                                child: Container(
                                  height: 100,
                                  width: width * 0.25,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 0, 66, 188),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(100),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            left: 125,
                            child: Column(
                              children: [
                                Container(
                                  child: const Text(
                                    "Special Skilled Category",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 66, 188),
                                      fontSize: 23,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Stack(
                                  children: [
                                    const Text(
                                      "Electronics Tecnition, Driver,",
                                      style: TextStyle(
                                        fontSize: 19,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double W = size.width;
    double h = size.height;
    final path = Path();
    path.lineTo(0, h);
    path.quadraticBezierTo(
      W,
      h + 100,
      W,
      h,
    );
    path.lineTo(W, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
