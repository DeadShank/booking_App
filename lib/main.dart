import 'package:booking_app/presentation/register_page.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/presentation/home_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterPage(),
    );
  }
}

// class MyListView extends StatelessWidget {


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${mainAppBar}'),
//         centerTitle: true,
//       ),
//       body: ListView(
//         padding: EdgeInsets.all(15),
//         children: [
//           ListTile(
//             title: Text('${nameOneHotel}'),
//             subtitle: Text(
//                 '${descriptionOneHotel}'),
//             trailing: Icon(Icons.keyboard_arrow_right_sharp),
//             onTap: () {
//               Route route = MaterialPageRoute(builder: (context) => HotelOne());
//               Navigator.push(context, route);
//             },
//           ),
//           ListTile(
//             title: Text('${nameTwoHotel}'),
//             trailing: Icon(Icons.keyboard_arrow_right_sharp),
//             subtitle: Text(
//                 '${descriptionTwoHotel}'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => HotelTwo(),
//                 ),
//               );
//             },
//           ),
//           ListTile(
//             title: Text('${nameThreeHotel}'),
//             trailing: Icon(Icons.keyboard_arrow_right_sharp),
//             subtitle: Text('${descriptionThreeHotel}'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => HotelThree(),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

