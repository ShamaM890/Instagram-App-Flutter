
import 'package:flutter/material.dart';

import 'Circle.dart';
import 'Square.dart';

class Homepage extends StatelessWidget {
  final List posts = ['Post1', 'Post2', 'Post3', 'Post4', 'Post5'];
  final List stories = ['Story1', 'Story2', 'Story3', 'Story4', 'Story5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text('Instagram'),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          //fontWeight: FontWeight.w500,
        ),

        //centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline_sharp),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.offline_bolt_outlined)),

          //IconButton(onPressed: (){}, icon: Icon(Icons.settings,)),
          //IconButton(onPressed: (){}, icon: Icon(Icons.notification_add,)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MyCircle(child: stories[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return MySquare(child: posts[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
