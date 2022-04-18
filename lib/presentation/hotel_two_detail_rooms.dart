import 'package:booking_app/components.dart';
import 'package:flutter/material.dart';


class RoomOneHotelTwo extends StatefulWidget {

  //var price = cash;
  @override
  _RoomOneHotelTwo createState() => _RoomOneHotelTwo();
}

class _RoomOneHotelTwo extends State<RoomOneHotelTwo> {


  late bool _isSelectedRoomOne;


  @override
  void initState(){
    _isSelectedRoomOne = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(nameRoomOneHotelTwo),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: ListView(
          padding: EdgeInsets.all(15),
          children: [
            ListTile(
              title: Text(headerInRoom),
            ),
            Ink(
              color: _isSelectedRoomOne? Colors.red : Colors.green,
              child: ListTile(
                title: Text(nameRoomOneHotelTwo),
                subtitle: Text(descriptionRoomOneHotelTwo),
                trailing: Text('${priceRoomOneHotelTwo}'),
                onTap: () {
                  if (priceRoomOneHotelTwo <= cash) {
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
                }
              ),
            ),
          
          ],
        ));

  }
}

class RoomTwoHotelTwo extends StatefulWidget {

  @override
  _RoomTwoHotelTwo createState() => _RoomTwoHotelTwo();
}

class _RoomTwoHotelTwo extends State<RoomTwoHotelTwo> {

  late bool _isSelectedRoomTwo;

  @override
  void initState(){
    _isSelectedRoomTwo = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(nameRoomTwoHotelTwo),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: ListView(
          padding: EdgeInsets.all(15),
          children: [
            ListTile(
              title: Text(headerInHotel),
            ),
            Ink(
              color: _isSelectedRoomTwo? Colors.red : Colors.green,

              child: ListTile(
                title: Text(nameRoomTwoHotelTwo),
                subtitle: Text(descriptionRoomTwoHotelTwo),
                trailing: Text('${priceRoomTwoHotelTwo}'),
                onTap: () {
                  if (priceRoomTwoHotelTwo <= cash) {
                    setState(() {
                      _isSelectedRoomTwo = !_isSelectedRoomTwo;
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