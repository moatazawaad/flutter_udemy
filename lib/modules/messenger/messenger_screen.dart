import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t1.18169-9/11140345_898396910280605_5074485779584357791_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Gft0HgO7x28AX9RT3Yg&_nc_ht=scontent.fcai21-4.fna&oh=00_AT9A97pYLfIxFV6EeSqXNKK7WIN0Cogc0w2grPFRvt7m2g&oe=631229F4'),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {},
              icon: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
          ),
          IconButton(onPressed: () {},
            icon: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400],
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                        'Search',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                    itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10.0,
                  ),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              ListView.separated(
                shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => buildChatItem(),
              separatorBuilder: (context, index) => SizedBox(
                height: 10.0,
              ),
              itemCount: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  //arrow function easily and short code
  // use when return 1 elment only and there's no anything b4 it

  Widget buildChatItem() => Row(
  children: [
  Stack(
  alignment: AlignmentDirectional.bottomEnd,
  children: [
  CircleAvatar(
  radius: 25.0,
  backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/222025208_107827804923894_7336925577688746299_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=TumySQ27mfcAX9bNwxV&_nc_ht=scontent.fcai21-4.fna&oh=00_AT8BTrRQJxX8Hh2cg-XTVm20I7hIPvMk7yMfzyDgUfp20w&oe=62F354BB'),
  ),
  CircleAvatar(
  radius: 9.0,
  backgroundColor: Colors.white,
  ),
  CircleAvatar(
  radius: 8.0,
  backgroundColor: Colors.green,
  ),
  ],
  ),
  SizedBox(
  width: 20.0,
  ),
  Expanded(
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text(
  'Laptop Consultant',
  style: TextStyle(
  fontWeight: FontWeight.bold,
  ),
  ),
  Row(
  children: [
  Expanded(
  child: Text(
  'متاح يافندم حتى نفاذ الكمية',
  maxLines: 2,
  overflow: TextOverflow.ellipsis,
  ),
  ),
  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 5.0),
  child: Container(
  width: 5.0,
  height: 5.0,
  decoration: BoxDecoration(
  color: Colors.black,
  shape: BoxShape.circle,
  ),
  ),
  ),
  Text(
  '02:00 PM'
  ),
  ],
  ),
  ],
  ),
  ),
  ],
  );

  Widget buildStoryItem() => Container(
    width: 50.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t1.18169-9/11140345_898396910280605_5074485779584357791_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Gft0HgO7x28AX9RT3Yg&_nc_ht=scontent.fcai21-4.fna&oh=00_AT9A97pYLfIxFV6EeSqXNKK7WIN0Cogc0w2grPFRvt7m2g&oe=631229F4'),
            ),
            CircleAvatar(
              radius: 9.0,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 8.0,
              backgroundColor: Colors.green,
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          'Moataz Mohamed Awaad',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.white,
  //     appBar: AppBar(
  //       backgroundColor: Colors.white,
  //       elevation: 0.0,
  //       titleSpacing: 20.0,
  //       title: Row(
  //         children: [
  //           CircleAvatar(
  //             radius: 20.0,
  //             backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t1.18169-9/11140345_898396910280605_5074485779584357791_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Gft0HgO7x28AX9RT3Yg&_nc_ht=scontent.fcai21-4.fna&oh=00_AT9A97pYLfIxFV6EeSqXNKK7WIN0Cogc0w2grPFRvt7m2g&oe=631229F4'),
  //           ),
  //           SizedBox(
  //             width: 20.0,
  //           ),
  //           Text(
  //             'Chats',
  //             style: TextStyle(
  //               color: Colors.black,
  //             ),
  //           ),
  //         ],
  //       ),
  //       actions: [
  //         IconButton(onPressed: () {},
  //           icon: CircleAvatar(
  //             radius: 20.0,
  //             backgroundColor: Colors.blue,
  //             child: Icon(
  //               Icons.camera_alt,
  //               color: Colors.white,
  //               size: 20.0,
  //             ),
  //           ),
  //         ),
  //         IconButton(onPressed: () {},
  //           icon: CircleAvatar(
  //             radius: 20.0,
  //             backgroundColor: Colors.blue,
  //             child: Icon(
  //               Icons.edit,
  //               color: Colors.white,
  //               size: 20.0,
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //     body: Padding(
  //       padding: const EdgeInsets.all(10.0),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Container(
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(10.0),
  //               color: Colors.grey[400],
  //             ),
  //             padding: EdgeInsets.all(5.0),
  //             child: Row(
  //               children: [
  //                 Icon(Icons.search),
  //                 SizedBox(
  //                   width: 15.0,
  //                 ),
  //                 Text(
  //                   'Search',
  //                 ),
  //               ],
  //             ),
  //           ),
  //           SizedBox(
  //             height: 10.0,
  //           ),
  //           SingleChildScrollView(
  //             scrollDirection: Axis.horizontal,
  //             child: Row(
  //               children: [
  //                 Container(
  //                   width: 50.0,
  //                   child: Column(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t1.18169-9/11140345_898396910280605_5074485779584357791_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Gft0HgO7x28AX9RT3Yg&_nc_ht=scontent.fcai21-4.fna&oh=00_AT9A97pYLfIxFV6EeSqXNKK7WIN0Cogc0w2grPFRvt7m2g&oe=631229F4'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         height: 5.0,
  //                       ),
  //                       Text(
  //                         'Moataz Mohamed Awaad',
  //                         maxLines: 2,
  //                         overflow: TextOverflow.ellipsis,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: 10.0,
  //                 ),
  //                 Container(
  //                   width: 50.0,
  //                   child: Column(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/283507435_10224041902888951_6511746006697387511_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=hjn5Mfxyp7cAX9zPxr3&_nc_oc=AQlStSgBWp7n7lTMwM9dKI0w2CtHKAVq_7LOMB5Zlx-8_X9GKonunQXvH1ypzs4tUTs&_nc_ht=scontent.fcai21-3.fna&oh=00_AT_3XVKIC8CDHqqnQaKnofP4NNyH0xpqcndEWARp5nNsYw&oe=62F26679'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         height: 5.0,
  //                       ),
  //                       Text(
  //                         'Ahmed Awaad',
  //                         maxLines: 2,
  //                         overflow: TextOverflow.ellipsis,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: 10.0,
  //                 ),
  //                 Container(
  //                   width: 50.0,
  //                   child: Column(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-3.fna.fbcdn.net/v/t1.6435-9/118309924_137046788081579_2342301262602021346_n.png?_nc_cat=1&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=pM-Zy8V6iGQAX_U-qAo&_nc_oc=AQmczfZT7CmNV5L4-fWxBAKVMLSlvcnRsE6lKorsoPy5Z54ppptAz29uorzKYQTkv6U&_nc_ht=scontent.fcai21-3.fna&oh=00_AT-UcCUvqQJYnNk4rEc5TnH8tcJzdrD0gfg3nI_A7O17-w&oe=63148A4E'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         height: 5.0,
  //                       ),
  //                       Text(
  //                         'Awfarlak',
  //                         maxLines: 2,
  //                         overflow: TextOverflow.ellipsis,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: 10.0,
  //                 ),
  //                 Container(
  //                   width: 50.0,
  //                   child: Column(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/295370040_10228213237174823_1255551252849651801_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=hDTrydjmXR0AX9f3M0D&_nc_ht=scontent.fcai21-3.fna&oh=00_AT_9JvhDMlHgrSOVIpE9EiL0lPKyT626wh8wdCL2b4R0sA&oe=62F281BB'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         height: 5.0,
  //                       ),
  //                       Text(
  //                         'Osama Mohamed ElZero',
  //                         maxLines: 2,
  //                         overflow: TextOverflow.ellipsis,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: 10.0,
  //                 ),
  //                 Container(
  //                   width: 50.0,
  //                   child: Column(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t1.6435-9/162294630_3675810879183738_7575218696068717474_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Vy2gUNFr-_sAX_FWYE6&_nc_oc=AQm-lw6or4kGt9bdlH8dOsIe0CfOPWpt_UDMEKOVG2yzkLKH7kdnTtWzX953le-py0E&_nc_ht=scontent.fcai21-4.fna&oh=00_AT--9AYv98Z74zzCyrDSHZYEj03kD_GxkoWn3ItGKRRIkA&oe=6314F6AF'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         height: 5.0,
  //                       ),
  //                       Text(
  //                         'Omar Ezzat',
  //                         maxLines: 2,
  //                         overflow: TextOverflow.ellipsis,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: 10.0,
  //                 ),
  //                 Container(
  //                   width: 50.0,
  //                   child: Column(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/284858314_560208315463787_2331120036168088144_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=yVxOXkyPYeUAX9zf0Dl&_nc_ht=scontent.fcai21-3.fna&oh=00_AT93p44oSBDoHnnZw_GbxMuJNW8uTb4L3mZNJx-aMiv1yw&oe=62F245E7'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         height: 5.0,
  //                       ),
  //                       Text(
  //                         'Mamdouh Nasrallah',
  //                         maxLines: 2,
  //                         overflow: TextOverflow.ellipsis,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: 10.0,
  //                 ),
  //                 Container(
  //                   width: 50.0,
  //                   child: Column(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t1.6435-9/56563177_2233977196661794_4483801159575797760_n.png?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=L2inYpSsnCIAX8JT_rf&tn=AfR2VenoUFS-jJve&_nc_ht=scontent.fcai21-4.fna&oh=00_AT8AZUCiD4T4FazLMrB7juPXbKLeGM4Iiywoa00-dvO5xw&oe=63142DC2'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         height: 5.0,
  //                       ),
  //                       Text(
  //                         'Sigma Computer',
  //                         maxLines: 2,
  //                         overflow: TextOverflow.ellipsis,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   width: 10.0,
  //                 ),
  //                 Container(
  //                   width: 50.0,
  //                   child: Column(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/222025208_107827804923894_7336925577688746299_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=TumySQ27mfcAX9bNwxV&_nc_ht=scontent.fcai21-4.fna&oh=00_AT8BTrRQJxX8Hh2cg-XTVm20I7hIPvMk7yMfzyDgUfp20w&oe=62F354BB'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         height: 5.0,
  //                       ),
  //                       Text(
  //                         'Laptop Consultant',
  //                         maxLines: 2,
  //                         overflow: TextOverflow.ellipsis,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           SizedBox(
  //             height: 20.0,
  //           ),
  //           Expanded(
  //             child: SingleChildScrollView(
  //               child: Column(
  //                 children: [
  //                   Row(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/222025208_107827804923894_7336925577688746299_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=TumySQ27mfcAX9bNwxV&_nc_ht=scontent.fcai21-4.fna&oh=00_AT8BTrRQJxX8Hh2cg-XTVm20I7hIPvMk7yMfzyDgUfp20w&oe=62F354BB'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         width: 20.0,
  //                       ),
  //                       Expanded(
  //                         child: Column(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             Text(
  //                               'Laptop Consultant',
  //                               style: TextStyle(
  //                                 fontWeight: FontWeight.bold,
  //                               ),
  //                             ),
  //                             Row(
  //                               children: [
  //                                 Expanded(
  //                                   child: Text(
  //                                     'متاح يافندم حتى نفاذ الكمية',
  //                                     maxLines: 2,
  //                                     overflow: TextOverflow.ellipsis,
  //                                   ),
  //                                 ),
  //                                 Padding(
  //                                   padding: const EdgeInsets.symmetric(horizontal: 5.0),
  //                                   child: Container(
  //                                     width: 5.0,
  //                                     height: 5.0,
  //                                     decoration: BoxDecoration(
  //                                       color: Colors.black,
  //                                       shape: BoxShape.circle,
  //                                     ),
  //                                   ),
  //                                 ),
  //                                 Text(
  //                                     '02:00 PM'
  //                                 ),
  //                               ],
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                   SizedBox(
  //                     height: 20.0,
  //                   ),
  //                   Row(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/222025208_107827804923894_7336925577688746299_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=TumySQ27mfcAX9bNwxV&_nc_ht=scontent.fcai21-4.fna&oh=00_AT8BTrRQJxX8Hh2cg-XTVm20I7hIPvMk7yMfzyDgUfp20w&oe=62F354BB'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         width: 20.0,
  //                       ),
  //                       Expanded(
  //                         child: Column(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             Text(
  //                               'Laptop Consultant',
  //                               style: TextStyle(
  //                                 fontWeight: FontWeight.bold,
  //                               ),
  //                             ),
  //                             Row(
  //                               children: [
  //                                 Expanded(
  //                                   child: Text(
  //                                     'متاح يافندم حتى نفاذ الكمية',
  //                                     maxLines: 2,
  //                                     overflow: TextOverflow.ellipsis,
  //                                   ),
  //                                 ),
  //                                 Padding(
  //                                   padding: const EdgeInsets.symmetric(horizontal: 5.0),
  //                                   child: Container(
  //                                     width: 5.0,
  //                                     height: 5.0,
  //                                     decoration: BoxDecoration(
  //                                       color: Colors.black,
  //                                       shape: BoxShape.circle,
  //                                     ),
  //                                   ),
  //                                 ),
  //                                 Text(
  //                                     '02:00 PM'
  //                                 ),
  //                               ],
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                   SizedBox(
  //                     height: 20.0,
  //                   ),
  //                   Row(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/222025208_107827804923894_7336925577688746299_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=TumySQ27mfcAX9bNwxV&_nc_ht=scontent.fcai21-4.fna&oh=00_AT8BTrRQJxX8Hh2cg-XTVm20I7hIPvMk7yMfzyDgUfp20w&oe=62F354BB'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         width: 20.0,
  //                       ),
  //                       Expanded(
  //                         child: Column(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             Text(
  //                               'Laptop Consultant',
  //                               style: TextStyle(
  //                                 fontWeight: FontWeight.bold,
  //                               ),
  //                             ),
  //                             Row(
  //                               children: [
  //                                 Expanded(
  //                                   child: Text(
  //                                     'متاح يافندم حتى نفاذ الكمية',
  //                                     maxLines: 2,
  //                                     overflow: TextOverflow.ellipsis,
  //                                   ),
  //                                 ),
  //                                 Padding(
  //                                   padding: const EdgeInsets.symmetric(horizontal: 5.0),
  //                                   child: Container(
  //                                     width: 5.0,
  //                                     height: 5.0,
  //                                     decoration: BoxDecoration(
  //                                       color: Colors.black,
  //                                       shape: BoxShape.circle,
  //                                     ),
  //                                   ),
  //                                 ),
  //                                 Text(
  //                                     '02:00 PM'
  //                                 ),
  //                               ],
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                   SizedBox(
  //                     height: 20.0,
  //                   ),
  //                   Row(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/222025208_107827804923894_7336925577688746299_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=TumySQ27mfcAX9bNwxV&_nc_ht=scontent.fcai21-4.fna&oh=00_AT8BTrRQJxX8Hh2cg-XTVm20I7hIPvMk7yMfzyDgUfp20w&oe=62F354BB'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         width: 20.0,
  //                       ),
  //                       Expanded(
  //                         child: Column(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             Text(
  //                               'Laptop Consultant',
  //                               style: TextStyle(
  //                                 fontWeight: FontWeight.bold,
  //                               ),
  //                             ),
  //                             Row(
  //                               children: [
  //                                 Expanded(
  //                                   child: Text(
  //                                     'متاح يافندم حتى نفاذ الكمية',
  //                                     maxLines: 2,
  //                                     overflow: TextOverflow.ellipsis,
  //                                   ),
  //                                 ),
  //                                 Padding(
  //                                   padding: const EdgeInsets.symmetric(horizontal: 5.0),
  //                                   child: Container(
  //                                     width: 5.0,
  //                                     height: 5.0,
  //                                     decoration: BoxDecoration(
  //                                       color: Colors.black,
  //                                       shape: BoxShape.circle,
  //                                     ),
  //                                   ),
  //                                 ),
  //                                 Text(
  //                                     '02:00 PM'
  //                                 ),
  //                               ],
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                   SizedBox(
  //                     height: 20.0,
  //                   ),
  //                   Row(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/222025208_107827804923894_7336925577688746299_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=TumySQ27mfcAX9bNwxV&_nc_ht=scontent.fcai21-4.fna&oh=00_AT8BTrRQJxX8Hh2cg-XTVm20I7hIPvMk7yMfzyDgUfp20w&oe=62F354BB'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         width: 20.0,
  //                       ),
  //                       Expanded(
  //                         child: Column(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             Text(
  //                               'Laptop Consultant',
  //                               style: TextStyle(
  //                                 fontWeight: FontWeight.bold,
  //                               ),
  //                             ),
  //                             Row(
  //                               children: [
  //                                 Expanded(
  //                                   child: Text(
  //                                     'متاح يافندم حتى نفاذ الكمية',
  //                                     maxLines: 2,
  //                                     overflow: TextOverflow.ellipsis,
  //                                   ),
  //                                 ),
  //                                 Padding(
  //                                   padding: const EdgeInsets.symmetric(horizontal: 5.0),
  //                                   child: Container(
  //                                     width: 5.0,
  //                                     height: 5.0,
  //                                     decoration: BoxDecoration(
  //                                       color: Colors.black,
  //                                       shape: BoxShape.circle,
  //                                     ),
  //                                   ),
  //                                 ),
  //                                 Text(
  //                                     '02:00 PM'
  //                                 ),
  //                               ],
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                   SizedBox(
  //                     height: 20.0,
  //                   ),
  //                   Row(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/222025208_107827804923894_7336925577688746299_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=TumySQ27mfcAX9bNwxV&_nc_ht=scontent.fcai21-4.fna&oh=00_AT8BTrRQJxX8Hh2cg-XTVm20I7hIPvMk7yMfzyDgUfp20w&oe=62F354BB'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         width: 20.0,
  //                       ),
  //                       Expanded(
  //                         child: Column(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             Text(
  //                               'Laptop Consultant',
  //                               style: TextStyle(
  //                                 fontWeight: FontWeight.bold,
  //                               ),
  //                             ),
  //                             Row(
  //                               children: [
  //                                 Expanded(
  //                                   child: Text(
  //                                     'متاح يافندم حتى نفاذ الكمية',
  //                                     maxLines: 2,
  //                                     overflow: TextOverflow.ellipsis,
  //                                   ),
  //                                 ),
  //                                 Padding(
  //                                   padding: const EdgeInsets.symmetric(horizontal: 5.0),
  //                                   child: Container(
  //                                     width: 5.0,
  //                                     height: 5.0,
  //                                     decoration: BoxDecoration(
  //                                       color: Colors.black,
  //                                       shape: BoxShape.circle,
  //                                     ),
  //                                   ),
  //                                 ),
  //                                 Text(
  //                                     '02:00 PM'
  //                                 ),
  //                               ],
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                   SizedBox(
  //                     height: 20.0,
  //                   ),
  //                   Row(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/222025208_107827804923894_7336925577688746299_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=TumySQ27mfcAX9bNwxV&_nc_ht=scontent.fcai21-4.fna&oh=00_AT8BTrRQJxX8Hh2cg-XTVm20I7hIPvMk7yMfzyDgUfp20w&oe=62F354BB'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         width: 20.0,
  //                       ),
  //                       Expanded(
  //                         child: Column(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             Text(
  //                               'Laptop Consultant',
  //                               style: TextStyle(
  //                                 fontWeight: FontWeight.bold,
  //                               ),
  //                             ),
  //                             Row(
  //                               children: [
  //                                 Expanded(
  //                                   child: Text(
  //                                     'متاح يافندم حتى نفاذ الكمية',
  //                                     maxLines: 2,
  //                                     overflow: TextOverflow.ellipsis,
  //                                   ),
  //                                 ),
  //                                 Padding(
  //                                   padding: const EdgeInsets.symmetric(horizontal: 5.0),
  //                                   child: Container(
  //                                     width: 5.0,
  //                                     height: 5.0,
  //                                     decoration: BoxDecoration(
  //                                       color: Colors.black,
  //                                       shape: BoxShape.circle,
  //                                     ),
  //                                   ),
  //                                 ),
  //                                 Text(
  //                                     '02:00 PM'
  //                                 ),
  //                               ],
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                   SizedBox(
  //                     height: 20.0,
  //                   ),
  //                   Row(
  //                     children: [
  //                       Stack(
  //                         alignment: AlignmentDirectional.bottomEnd,
  //                         children: [
  //                           CircleAvatar(
  //                             radius: 25.0,
  //                             backgroundImage: NetworkImage('https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/222025208_107827804923894_7336925577688746299_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=TumySQ27mfcAX9bNwxV&_nc_ht=scontent.fcai21-4.fna&oh=00_AT8BTrRQJxX8Hh2cg-XTVm20I7hIPvMk7yMfzyDgUfp20w&oe=62F354BB'),
  //                           ),
  //                           CircleAvatar(
  //                             radius: 9.0,
  //                             backgroundColor: Colors.white,
  //                           ),
  //                           CircleAvatar(
  //                             radius: 8.0,
  //                             backgroundColor: Colors.green,
  //                           ),
  //                         ],
  //                       ),
  //                       SizedBox(
  //                         width: 20.0,
  //                       ),
  //                       Expanded(
  //                         child: Column(
  //                           crossAxisAlignment: CrossAxisAlignment.start,
  //                           children: [
  //                             Text(
  //                               'Laptop Consultant',
  //                               style: TextStyle(
  //                                 fontWeight: FontWeight.bold,
  //                               ),
  //                             ),
  //                             Row(
  //                               children: [
  //                                 Expanded(
  //                                   child: Text(
  //                                     'متاح يافندم حتى نفاذ الكمية',
  //                                     maxLines: 2,
  //                                     overflow: TextOverflow.ellipsis,
  //                                   ),
  //                                 ),
  //                                 Padding(
  //                                   padding: const EdgeInsets.symmetric(horizontal: 5.0),
  //                                   child: Container(
  //                                     width: 5.0,
  //                                     height: 5.0,
  //                                     decoration: BoxDecoration(
  //                                       color: Colors.black,
  //                                       shape: BoxShape.circle,
  //                                     ),
  //                                   ),
  //                                 ),
  //                                 Text(
  //                                     '02:00 PM'
  //                                 ),
  //                               ],
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
