import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
 
 final   Color backgroundColor;
  const CustomAppBar({
    super.key,
   
    required this.backgroundColor,
  });
  @override
  Size get preferredSize => const Size.fromHeight(
        60,
      );
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
    );
  }
}






// import 'package:flutter/material.dart';

// class BdJobsSearchPage extends StatefulWidget {
//   const BdJobsSearchPage({super.key});

//   @override
//   State<BdJobsSearchPage> createState() => _BdJobsSearchPageState();
// }

// class _BdJobsSearchPageState extends State<BdJobsSearchPage> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       elevation: 10,
//       //backgroundColor: const Color.fromARGB(255, 184, 0, 150),
//       backgroundColor: const Color.fromARGB(255, 147, 0, 127),
//       leading: IconButton(
//         onPressed: () {},
//         icon: const Icon(
//           Icons.arrow_back,
//           color: Colors.white,
//         ),
//       ),
//       title: const Text(
//         'Job Categories',
//         style: TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//           fontSize: 26,
//         ),
//       ),
//       actions: [
//         IconButton(
//           onPressed: () {},
//           icon: const Icon(
//             Icons.sort,
//             color: Colors.white,
//           ),
//         ),
//       ],

//       body: Column(
//         children: [
//           Expanded(
//             child: ListView(
//               children: [
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   '  My Categories',
//                   textAlign: TextAlign.start,
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 147, 0, 127),
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                       height: 110,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(8),
//                         border: Border.all(
//                           width: 1,
//                           color: const Color.fromARGB(255, 147, 0, 127),
//                         ),
//                       ),
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   height: 30,
//                                   width: 30,
//                                   decoration: BoxDecoration(
//                                     color: const Color.fromARGB(
//                                         101, 210, 141, 255),
//                                     borderRadius: BorderRadius.circular(3),
//                                   ),
//                                   child: const Icon(Icons.calculate),
//                                 ),
//                                 const SizedBox(
//                                   width: 10,
//                                 ),
//                                 const Text(
//                                   '300',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     color: Color.fromARGB(255, 147, 0, 127),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 3,
//                           ),
//                           const Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'Engineer\n/Architect',
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       height: 110,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(8),
//                         border: Border.all(
//                           width: 1,
//                           color: const Color.fromARGB(255, 147, 0, 127),
//                         ),
//                       ),
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   height: 30,
//                                   width: 30,
//                                   decoration: BoxDecoration(
//                                     color: const Color.fromARGB(
//                                         101, 210, 141, 255),
//                                     borderRadius: BorderRadius.circular(3),
//                                   ),
//                                   child: const Icon(Icons.calculate),
//                                 ),
//                                 const SizedBox(
//                                   width: 10,
//                                 ),
//                                 const Text(
//                                   '166',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     color: Color.fromARGB(255, 147, 0, 127),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 3,
//                           ),
//                           const Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'Medical\n/Pharma',
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       height: 110,
//                       width: 120,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(8),
//                         border: Border.all(
//                           width: 1,
//                           color: const Color.fromARGB(255, 147, 0, 127),
//                         ),
//                       ),
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   height: 30,
//                                   width: 30,
//                                   decoration: BoxDecoration(
//                                     color: const Color.fromARGB(
//                                         101, 210, 141, 255),
//                                     borderRadius: BorderRadius.circular(3),
//                                   ),
//                                   child: const Icon(Icons.calculate),
//                                 ),
//                                 const SizedBox(
//                                   width: 10,
//                                 ),
//                                 const Text(
//                                   '102',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     color: Color.fromARGB(255, 147, 0, 127),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 3,
//                           ),
//                           const Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'Production\n/Operation',
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 const SizedBox(
//                   height: 40,
//                   child: Text(
//                     '  Functional Categories',
//                     style: TextStyle(
//                       color: Color.fromARGB(255, 147, 0, 127),
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
