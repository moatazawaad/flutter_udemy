import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/users/users_model.dart';


class UsersScreen extends StatelessWidget {
   UsersScreen({Key? key}) : super(key: key);

   List<UsersModel> users = [
     UsersModel(
      // id: 1,
       name: 'Ahmed Awaad',
       phone: '+201116184906',
       photo: 'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.18169-1/11140345_898396910280605_5074485779584357791_n.jpg?stp=dst-jpg_p160x160&_nc_cat=111&ccb=1-7&_nc_sid=7206a8&_nc_ohc=Gft0HgO7x28AX_GToqy&_nc_ht=scontent.fcai21-4.fna&oh=00_AT_dBaE1h1CUklTmL9umsoS6ImNq_nFRCFNEp4ldzI4jUw&oe=6315D31A',
     ),
     UsersModel(
     //  id: 2,
       name: 'Kareem Awaad',
       phone: '+201116184906',
       photo: 'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.18169-1/11140345_898396910280605_5074485779584357791_n.jpg?stp=dst-jpg_p160x160&_nc_cat=111&ccb=1-7&_nc_sid=7206a8&_nc_ohc=Gft0HgO7x28AX_GToqy&_nc_ht=scontent.fcai21-4.fna&oh=00_AT_dBaE1h1CUklTmL9umsoS6ImNq_nFRCFNEp4ldzI4jUw&oe=6315D31A',
     ),
     UsersModel(
      // id: 3,
       name: 'Moataz Awaad',
       phone: '+201116184906',
       photo: 'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.18169-1/11140345_898396910280605_5074485779584357791_n.jpg?stp=dst-jpg_p160x160&_nc_cat=111&ccb=1-7&_nc_sid=7206a8&_nc_ohc=Gft0HgO7x28AX_GToqy&_nc_ht=scontent.fcai21-4.fna&oh=00_AT_dBaE1h1CUklTmL9umsoS6ImNq_nFRCFNEp4ldzI4jUw&oe=6315D31A',
     ),
     UsersModel(
      // id: 4,
       name: 'Mohamed Awaad',
       phone: '+201116187906',
       photo: 'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.18169-1/11140345_898396910280605_5074485779584357791_n.jpg?stp=dst-jpg_p160x160&_nc_cat=111&ccb=1-7&_nc_sid=7206a8&_nc_ohc=Gft0HgO7x28AX_GToqy&_nc_ht=scontent.fcai21-4.fna&oh=00_AT_dBaE1h1CUklTmL9umsoS6ImNq_nFRCFNEp4ldzI4jUw&oe=6315D31A',
     ),
     UsersModel(
      // id: 5,
       name: 'Yassin Awaad',
       phone: '+201764184906',
       photo: 'https://scontent.fcai21-4.fna.fbcdn.net/v/t1.18169-1/11140345_898396910280605_5074485779584357791_n.jpg?stp=dst-jpg_p160x160&_nc_cat=111&ccb=1-7&_nc_sid=7206a8&_nc_ohc=Gft0HgO7x28AX_GToqy&_nc_ht=scontent.fcai21-4.fna&oh=00_AT_dBaE1h1CUklTmL9umsoS6ImNq_nFRCFNEp4ldzI4jUw&oe=6315D31A',
     ),
   ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => builderUseresItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
      ),
    );
  }

  Widget builderUseresItem(UsersModel user) => Padding(
    padding: const EdgeInsets.all(5.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          backgroundImage: NetworkImage('${user.photo}'),
          // child: Text(
          //   '${user.id}',
          //   style: TextStyle(
          //     fontSize: 20.0,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
