import 'package:booking_app/components.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/presentation/register_page.dart';

class RoomOneHotelOne extends StatefulWidget {
  //var price = cash;
  @override
  _RoomOneHotelOne createState() => _RoomOneHotelOne();
}

class _RoomOneHotelOne extends State<RoomOneHotelOne> {
  late bool _isSelectedRoomOne;

  @override
  void initState() {
    _isSelectedRoomOne = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(nameRoomOneHotelOne),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: ListView(
          padding: EdgeInsets.all(15),
          children: [
            ListTile(
              title: Text(headerInRoom),
            ),
            Ink(
              color: _isSelectedRoomOne ? Colors.red : Colors.lightGreen,
              child: ListTile(
                title: Text(nameRoomOneHotelOne),
                subtitle: Text(descriptionRoomOneHotelOne),
                trailing: Text('$priceRoomOneHotelOne'),
                onTap: () {
                  if (priceRoomOneHotelOne < cash) {
                    setState(() {
                      _isSelectedRoomOne;
                    });
                  } else {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(alertDialog),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ));
  }
}

class RoomTwoHotelOne extends StatefulWidget {
  @override
  _RoomTwoHotelOne createState() => _RoomTwoHotelOne();
}

class _RoomTwoHotelOne extends State<RoomTwoHotelOne> {
  late bool _isSelectedRoomOne;

  @override
  void initState() {
    _isSelectedRoomOne = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(nameRoomTwoHotelOne),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: ListView(
          padding: EdgeInsets.all(15),
          children: [
            ListTile(
              title: Text(headerInHotel),
            ),
            Ink(
              color: _isSelectedRoomOne ? Colors.red : Colors.lightGreen,
              child: ListTile(
                title: Text(nameRoomTwoHotelTwo),
                subtitle: Text(descriptionRoomTwoHotelTwo),
                trailing: Text('$priceRoomTwoHotelTwo'),
                onTap: () {
                  if (priceRoomTwoHotelOne <= cash) {
                    setState(() {
                      _isSelectedRoomOne = !_isSelectedRoomOne;
                    });
                  } else {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(alertDialog),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ));
  }
}
