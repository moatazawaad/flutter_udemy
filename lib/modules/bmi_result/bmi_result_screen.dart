//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BMIResult extends StatelessWidget {
   // BMIResult ({Key? key}) : super(key: key);

  late final bool isMale;
  late final int result;
  late final int age;
  BMIResult({
    required this.isMale,
    required this.result,
    required this.age,
    });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()
        {
          Navigator.pop(context);
        },
            icon: Icon(
              Icons.keyboard_arrow_left,
            ),
        ),
        title: Text(
          'BMI Result',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male': 'Female'}',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result : $result',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
