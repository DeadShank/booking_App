import 'package:booking_app/components.dart';
import 'package:booking_app/presentation/hotel_one_detail_rooms.dart';
import 'package:booking_app/presentation/hotel_two_detail_rooms.dart';
import 'package:flutter/material.dart';

class HotelTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${nameTwoHotel}'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          
          ListTile(
            title: Text('${headerInHotel}'),
          ),
          ListTile(
            title: Text('${nameRoomOneHotelTwo}'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RoomOneHotelTwo(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('${nameRoomTwoHotelTwo}'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RoomTwoHotelTwo(),
                ),
              );
            },
          ),
        
        ],
      ),
    );
  }
}

// import 'package:booking_app/components.dart';
// import 'package:flutter/material.dart';

// class HotelTwo extends StatefulWidget {

//   @override
//   _HotelTwoState createState() => _HotelTwoState();
// }

// class _HotelTwoState extends State<HotelTwo> {


//   late bool _isSelectedRoomOne;
//   late bool _isSelectedRoomTwo;

//   @override
//   void initState(){
//     _isSelectedRoomOne = false;
//     _isSelectedRoomTwo = false;
//     super.initState();
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('${nameTwoHotel}'),
//           centerTitle: true,
//           backgroundColor: Colors.green,
//         ),
//         body: ListView(
//           padding: EdgeInsets.all(15),
//           children: [
//             ListTile(
//               title: Text('${headerInHotel}'),
//             ),
//             Ink(
//               color: _isSelectedRoomOne? Colors.red : Colors.transparent,
//               child: ListTile(
//                 title: Text('${nameRoomOneHotelThree}'),
//                 subtitle: Text('${descriptionRoomOneHotelThree}'),
//                 trailing: Text('${priceRoomOneHotelThree}'),
//                 onTap: () {
//                   setState(() {
//                     _isSelectedRoomOne = !_isSelectedRoomOne;
//                   });
//                 },
//               ),
//             ),
//             Ink(
//               color: _isSelectedRoomTwo? Colors.red : Colors.transparent,
//               child: ListTile(
//                 title: Text('${nameRoomTwoHotelThree}'),
//                 subtitle: Text('${descriptionRoomTwoHotelThree}'),
//                 trailing: Text('${priceRoomTwoHotelThree}'),
//                 onTap: () {
//                   setState(() {
//                     _isSelectedRoomTwo = !_isSelectedRoomTwo;
//                   });
//                 },
//               ),
//             ),
//           ],
//         ));

//   }
// }