// // Nomor 1
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Google Fonts di Flutter',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Penggunaan Google Fonts di Flutter')),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [const Color.fromARGB(255, 211, 255, 90), const Color.fromARGB(255, 210, 255, 193)], // Warna gradien
//           ),
//         ),
//         child: Center(
//           child: Text(
//             'Ini Contohnya',
//             style: GoogleFonts.acme(
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//               color: const Color.fromARGB(255, 34, 33, 33),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Nomor 2
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const ImageExampleApp());
// }

// class ImageExampleApp extends StatelessWidget {
//   const ImageExampleApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Contoh Widget Image'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
            
//             children: [
//               Image.asset(
//                 'assets/images/nailong_contoh.jpg',
//                 width: 120,
//                 height: 120,
//               ),
//               const SizedBox(height: 20),

//               Image.asset(
//                 'assets/images/patrick_contoh.png',
//                 width: 120,
//                 height: 120,
//               ),
//               const SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Nomor 3
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter Layout Main/Cross Axis'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(10),
//           child: buildColumn(),
//         ),
//       ),
//     );
//   }

//   Widget buildColumn() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Kotak Atas
//         Container(
//           width: double.infinity,
//           height: 100,
//           color: Colors.blue,
//           alignment: Alignment.center,
//           child: const Text(
//             'Kotak Main Axis dan Cross Axis',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 18,
//             ),
//           ),
//         ),
//         const SizedBox(height: 12),
//         // Dua Kotak di Bawah
//         Row(
//           children: [
//             Expanded(
//               child: Container(
//                 height: 250,
//                 clipBehavior: Clip.antiAlias,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: Image.asset(
//                   'assets/images/patrick_contoh.png',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             const SizedBox(width: 12),

//             Expanded(
//               child: Container(
//                 height: 250,
//                 clipBehavior: Clip.antiAlias,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: Image.asset(
//                   'assets/images/nailong_contoh.jpg',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 12),

//         Row(
//           children: [
//             Expanded(
//               child: Container(
//                 height: 250,
//                 clipBehavior: Clip.antiAlias,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: Image.asset(
//                   'assets/images/google_logo.png',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             const SizedBox(width: 12),

//             Expanded(
//               child: Container(
//                 height: 250,
//                 clipBehavior: Clip.antiAlias,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: Image.asset(
//                   'assets/images/whatsapp_logo.png',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// Nomor 4
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hasil No. 4',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  final String title = 'Oeschinen Lake Campground';
  final String location = 'Kandersteg, Switzerland';
  final String description = 
      'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. '
      'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
      'A gondola ride from Kandersteg, followed by a half-hour walk through pastures '
      'and pine forest, leads you to the lake, which warms to 20 degrees Celcius in the summer. '
      'Activities enjoyed here include rowing, and riding the summer toboggan run.';

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layout Demo'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/oeschinen_lake.jpg',
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          location,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.star, size: 32, color: Colors.red),
                  const SizedBox(width: 5),
                  const Text('41', style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
            
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButtonColumn(color, Icons.call, 'CALL'),
                _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
                _buildButtonColumn(color, Icons.share, 'SHARE'),
              ],
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                description,
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}