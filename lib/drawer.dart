import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
         UserAccountsDrawerHeader(
           decoration: BoxDecoration(color: Colors.blueGrey[900]),
             accountName: Text("AudioMax" ,
               style:  TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold

               ),
             ),
             accountEmail: null,
             currentAccountPicture: CircleAvatar(
               backgroundImage: AssetImage("images/Cover.jpg"),

             ),
         ),
          DrawerHeader(
            child: Text(
              ' MusicFest ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            //decoration: BoxDecoration(color: Colors.blueGrey[900]),
          ),
          ListTile(
            leading: Icon(
              Icons.library_music,
              size: 50,
              color: Colors.black,
            ),
            title: Text('Library',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.playlist_play,
              size: 50,
              color: Colors.black,
            ),
            title: Text('PlayList',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.timeline,
              size: 50,
              color: Colors.black,
            ),
            title: Text('Now Playing',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
