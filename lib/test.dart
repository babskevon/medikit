// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  // _homeView createState() => _homeView();
  Widget build(BuildContext context) {
    final patientTile = ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: const EdgeInsets.only(right: 12.0),
          decoration: const BoxDecoration(
              border:
                  Border(right: BorderSide(width: 1.0, color: Colors.white24))),
          child: const Icon(Icons.account_circle_sharp, color: Colors.white),
        ),
        title: const Text(
          "Okwir Mariko",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: const <Widget>[
            Icon(Icons.hotel, color: Colors.yellowAccent),
            Text(" RoomNo : 04, BedNo: 007",
                style: TextStyle(color: Colors.white)),
          ],
        ),
        onTap: () {
          // print('kevin is good and the best');
        },
        trailing: const Icon(Icons.keyboard_arrow_right,
            color: Colors.white, size: 30.0));

    // create card
    final infoCard = Card(
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: const BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: patientTile,
      ),
    );
    // app code
    final appBody = ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return infoCard;
      },
    );

    return Scaffold(
      backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
        title: const Text('MediKit'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () {},
          ),
        ],
      ),
      body: appBody,
    );
  }
}

// class _homeView extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
