import 'dart:html';

import 'dart:io';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue), home: homescreen());
  }
}

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 60),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey[800],
                  size: 30,
                ),
                Text(' '),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200]),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "Sebastian Smith",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/share.png'),
                  radius: 15,
                  backgroundColor: Colors.white10,
                )
              ],
            ),
            Center(child: Image.asset('assets/images/tiger.jpg')),
            ListTile(
                title: Text(
                  'Sebastian Smith',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Actor '),
                leading: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.green,
                    backgroundImage: AssetImage('assets/images/ronaldo.jpg')),
                trailing: Icon(Icons.thumb_up)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Center(
                      child: Text('Follow',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0))),
                ),
                Container(
                  height: 40.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Icon(Icons.messenger),
                ),
                Container(
                  height: 40.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Icon(Icons.more_horiz),
                )
              ],
            ),
            Text(''),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('      '),
                Icon(
                  Icons.circle_rounded,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.circle_rounded,
                  color: Colors.grey,
                ),
                Text(
                    'Abin p elthose,vaisakh,Amal and 2,307,773 others like this')
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: () {}, child: Text('Home')),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Posts',
                      style: TextStyle(color: Colors.grey),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text('About', style: TextStyle(color: Colors.grey))),
                TextButton(
                    onPressed: () {},
                    child:
                        Text('Videos', style: TextStyle(color: Colors.grey))),
                TextButton(
                    onPressed: () {},
                    child: Text('Photos', style: TextStyle(color: Colors.grey)))
              ],
            ),
            Divider(
              thickness: 9.0,
              color: Colors.grey[400],
            ),
            Text(''),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Text(
                  'About',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                Icon(Icons.info),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text('New Playground Same Kid'),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 25)),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                const SizedBox(width: 5),
                Image.asset(
                  'assets/images/globe.png',
                  width: 22.5,
                  height: 22.5,
                  color: Colors.grey[700],
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  'www.sebsmith.com',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                Icon(Icons.folder_open_sharp),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text('Actor')
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'See All',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ],
            ),
            BottomNavigationBar(
              currentIndex: 0, // this will be set when a new tab is tapped
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(Icons.home),
                  title: new Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.person_search_rounded),
                  title: new Text('Messages'),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text('Profile'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
