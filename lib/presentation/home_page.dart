import 'package:booking_app/presentation/user_info_page.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/components.dart';
import 'package:booking_app/presentation/hotel_one.dart';
import 'package:booking_app/presentation/hotel_two.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mainAppBar),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          ListTile(
            title: Text(nameOneHotel),
            subtitle: Text(descriptionOneHotel),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => HotelOne()));
            },
          ),
          ListTile(
            title: Text(nameTwoHotel),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            subtitle: Text(descriptionTwoHotel),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HotelTwo(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}



// class HomePage extends StatefulWidget {
//   HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   var data = HotelsModel.list;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           '${mainAppBar}',
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               '',
//               style: TextStyle(color: Colors.black38),
//             ),
//             Expanded(
//                 child: ListView.builder(
//                     physics: BouncingScrollPhysics(),
//                     itemCount: data.length,
//                     itemBuilder: (context, index) {
//                       return GestureDetector(
//                           onTap: () {
//                             Navigator.of(context).push(
//                               MaterialPageRoute(
//                                 builder: (_) => DetailHotels(
//                                   data[index],
//                                 ),
//                               ),
//                             );
//                           },
//                           child: _buildItem(context, index));
//                     })),
//           ],
//         ),
//       ),
//     );
//   }

//   _buildItem(BuildContext context, int index) {
//     return Container(
//       padding: EdgeInsets.only(top: 10),
//       margin: EdgeInsets.all(10.0),
//       color: Colors.blueAccent,
//       width: 150,
//       height: 50,
//         child: Text(
//           '${data[index].nameHotel}',
//           style: TextStyle(
//             color: Colors.white
//           ),
//         ),
//     );
//   }
// }

