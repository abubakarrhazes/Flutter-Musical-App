import 'package:flutter/material.dart';
import 'package:audioplayer/audioplayer.dart';
import 'drawer.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "AudioMax",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.blueGrey[800],
      ),
      backgroundColor: Colors.blueGrey[800],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("images/Cover.jpg"),
            ),
            Text("STORMZY",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                )),
            Text(
              'MUSICIAN ARTIST',
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Divider(
              height: 40,
              color: Colors.white,

            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                       print('You Clicked The Play Icon');
                      },
                      icon: Icon(
                        Icons.play_arrow,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Play All",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.playlist_add,
                      size: 25,
                      color: Colors.white,
                    ),
                    Text(
                      "Add To",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(

                      Icons.delete_outline,
                      size: 25,
                      color: Colors.white,
                    ),
                    Text(
                      "Delete",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.refresh,
                      size: 25,
                      color: Colors.white,
                    ),
                    Text(
                      "Refresh",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
