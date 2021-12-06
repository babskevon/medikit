import 'package:flutter/material.dart';
import 'constants.dart';

class PatientData extends StatefulWidget {
  final double pid;
  const PatientData({Key? key, required this.pid}) : super(key: key);

  @override
  _PatientState createState() => _PatientState();
}

class _PatientState extends State<PatientData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      appBar: AppBar(
        backgroundColor: kbackground,
        title: const Text('Patient Details'),
        centerTitle: true,
      ),
    );
  }
}
