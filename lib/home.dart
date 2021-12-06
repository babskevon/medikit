import 'package:flutter/material.dart';
import 'patient_data.dart';
import 'patient.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var patients = Patient.getData;
  @override
  Widget build(BuildContext context) {
    // appbody
    final appBody = ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: patients.length,
      itemBuilder: (BuildContext context, index) {
        return Card(
          elevation: 8.0,
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration:
                const BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              leading: Container(
                padding: const EdgeInsets.only(right: 12.0),
                decoration: const BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.white24))),
                child:
                    const Icon(Icons.account_circle_sharp, color: Colors.white),
              ),
              title: Text(
                "${patients[index]['name']}",
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: <Widget>[
                  const Icon(Icons.hotel, color: Colors.yellowAccent),
                  Text(
                      " RoomNo : ${patients[index]['ward']}, BedNo: ${patients[index]['bedno']}",
                      style: const TextStyle(color: Colors.white)),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PatientData(
                            pid: 2.0,
                          )),
                );
              },
              trailing: const Icon(Icons.keyboard_arrow_right,
                  color: Colors.white, size: 30.0),
            ),
          ),
        );
      },
    );

    return Scaffold(
      backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
        title: const Text('Medikit'),
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
