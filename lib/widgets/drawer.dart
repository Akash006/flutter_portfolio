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
                  decoration: const BoxDecoration(
                    // color: Colors.blue[400],
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
                                    ),
                                  ),
                                  Text("akashsaini0797@gmail.com",
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                ),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.folder,
                      size: 28,),
                      SizedBox(width: 10,),
                      Text("My Files",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.settings,
                        size: 28,),
                      SizedBox(width: 10,),
                      Text("Settings",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Divider(
                  // color: Colors.grey[200],
                ),
                const Text("Made with ❤️",
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