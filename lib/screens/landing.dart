import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/elevated_button.dart';
import 'package:flutter/src/material/icon_button.dart';

class landing extends StatelessWidget {
  const landing({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.green,
      Colors.purple,
      Colors.red,
      Colors.blue,
      Colors.orange,
      Colors.grey,
      Colors.deepOrange,
      Colors.white,
      Colors.brown,
      Colors.indigo,
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        toolbarOpacity: 1,
        backgroundColor: Colors.blueGrey,
        title: Row(
          children: <Widget>[
            Text(
              'Institute Name',
              style: TextStyle(
                fontSize: 19,
                //fontFamily: 'IndieFlower',
                letterSpacing:
                    -1.2, // aste aste sob concept clear hoye jabe tui baki page gulo design korene ok??
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, color: Colors.white),
                ),
                IconButton(
                  iconSize: 25,
                  icon: const Icon(Icons.home_filled, color: Colors.white),
                  onPressed: () {
                    print('Search');
                  },
                ),
                IconButton(
                  iconSize: 25,
                  icon: const Icon(Icons.quiz_sharp, color: Colors.white),
                  onPressed: () {
                    print('Search');
                  },
                ),
                IconButton(
                  iconSize: 25,
                  icon: const Icon(Icons.person_outline_outlined,
                      color: Colors.white),
                  onPressed: () {
                    print('Search');
                  },
                ),
                Row(children: [
                  IconButton(
                    iconSize: 25,
                    icon: const Icon(Icons.notifications_active_outlined,
                        color: Colors.white),
                    onPressed: () {
                      print('Search');
                    },
                  ),
                ]),
              ]),
            ],
          ),
        ],
        centerTitle: false,
        //backgroundColor: Colors.blue[300],
      ),
      body: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.45),
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.

          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          scrollDirection: Axis.horizontal,

          // Generate 100 widgets that display their index in the List.
          children: List.generate(10, (index) {
            return Container(
              color: colors[index % colors.length],
              alignment: Alignment.bottomCenter,
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
          'Chat box',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.black,
    );
  }
}
