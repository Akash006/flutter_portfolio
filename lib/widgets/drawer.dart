import 'package:flutter/material.dart';

class DrawerWidget {
  Drawer myDrawer = Drawer(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue[400],
                    borderRadius: BorderRadius.only(
                      // bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(35)
                    )
                  ),
                    padding: EdgeInsets.zero,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: const Center(
                        child: Row(
                          children: [
                            CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                    'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg')),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text("Akash Saini",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26,
                                      color: Colors.white
                                    ),
                                  ),
                                  Text("akashsaini0797@gmail.com",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white70
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                ),
                const ListTile(
                  leading: Icon(Icons.folder),
                  title: Text("My Files"),
                  textColor: Colors.blue,
                  iconColor: Colors.blue,
                ),
                const ListTile(
                  leading: Icon(Icons.group),
                  title: Text('Shared with me'),
                  textColor: Colors.blue,
                  iconColor: Colors.blue,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Divider(
                  color: Colors.grey[200],
                ),
                const Text("Made with ❤️ by Akash",
                    style: TextStyle(color: Colors.grey)),
                const Text(
                  "Version: 1.2.0",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          )
        ]),
  );
}