import 'package:booking_app/components.dart';
import 'package:booking_app/presentation/hotel_one_detail_rooms.dart';
import 'package:flutter/material.dart';

class HotelOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nameOneHotel),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          ListTile(
            title: Text(headerInHotel),
          ),
          ListTile(
            title: Text(nameRoomOneHotelOne),
            trailing: const Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RoomOneHotelOne(),
                ),
              );
            },
          ),
          ListTile(
            title: Text(nameRoomTwoHotelOne),
            trailing: const Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RoomTwoHotelOne(),
                ),
              );
            },
          ),
        
        ],
      ),
    );
  }
}

