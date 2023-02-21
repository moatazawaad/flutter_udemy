import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: () {  },
        ),
        title: Text(
          'First App',
        ),
        actions: [
          IconButton(onPressed: () {
            print('No notification yet');
            }, icon: Icon(
            Icons.notification_important,
           // color: Colors.black,
          )),
          // IconButton(onPressed: () {
          //   print('Type what u think');
          //   }, icon: Text(
          //   'Search',
          // )),
          IconButton(icon: Icon(Icons.search,),
            onPressed: () {  },)
        ],
      ),
      //use SafeArea in body if there is no appbar in scaffold
      // body: SafeArea(
      //     child: Text('Hello World',)),
      body: Container(
        color: Colors.blueGrey,
        width: double.infinity,
        // row is the same like column
        child: SingleChildScrollView(
          // scroll direction by default vertical
          // y3ne scroll up and down , horizontal for right and left
          scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image(
                          image: NetworkImage(
                            'https://th.bing.com/th/id/OIP.GUH_Kpllkj4patJPkKscWwHaEK?pid=ImgDet&rs=1'
                          ),
                        height: 200.0,
                        width: 200.0,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                          'By Lenovo',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Hey There',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onNotification()
  {
    print('No Notifcation Yet');
  }
}

// BIG NOTE: WIDGET ALWAYS START WITH SMALL
// ATTRIBUTE OF WIDGET ALWAYS START WITH CAPITAL
// EX:mainAxisSize: MainAxisSize.value,

// to create widget stack wrap with column than rename it to stack
// note : stack with children not child

//container يستخدم عشان تقدر تدى اى خصائص من خلاله فهو اكثر ويدجيت شامل
//expanded بيدى طول ماكس لوحده ع اى شاشه
//mainAxisSize تتحكم ف طول كونتينر او كولم كامل لحد اخر الشاشه ولا لحد كولم بس
// flex بيعدل ف ارتفاع الاكسبانديد بتاع الكولم
//mainAxisSize default max
//mainAxisAlignment default top/start
//crossAxisAlignment default center


// Expanded(
//   flex: 3,
//   child: Container(
//     color: Colors.black,
//     child: Text(
//       'Hey There',
//       style: TextStyle(
//         color: Colors.blue,
//         fontSize: 30.0,
//         fontWeight: FontWeight.bold,
//         fontStyle: FontStyle.italic,
//       ),
//     ),
//   ),
// ),
// Expanded(
//   child: Container(
//   color: Colors.white,
//   child: Text(
//     'Welcome Sir',
//     style: TextStyle(
//       color: Colors.red,
//       fontSize: 20.0,
//       fontWeight: FontWeight.bold,
//       fontStyle: FontStyle.italic,
//     ),
//   ),
// ),
// ),



// body: Container(
// color: Colors.blueGrey,
// width: double.infinity,
// // row is the same like column
// child: SingleChildScrollView(
// child: Column(
// mainAxisSize: MainAxisSize.max,
// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// child: Text(
// 'Hey There',
// style: TextStyle(
// color: Colors.white
// fontSize: 30.0,
// fontWeight: FontWeight.bold,
// fontStyle: FontStyle.italic,
// ),
// ),
// ),
// ),