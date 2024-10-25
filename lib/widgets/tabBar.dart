import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar Widget'),
          backgroundColor: Colors.blue,
          bottom: const TabBar(
              labelColor: Colors.black54, // Color of selected tab text
              unselectedLabelColor: Colors.black54, // Color of unselected tab text
              indicatorColor: Colors.black54, // Color of the line under the selected tab
              indicatorWeight: 5.0, // Thickness of the indicator line
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.chat,
                  ),
                  text: 'CHATS',
                ),
                Tab(
                  icon: Icon(
                    Icons.chat_bubble,
                  ),
                  text: 'STATUS',
                ),
                Tab(
                  icon: Icon(
                    Icons.call,
                  ),
                  text: 'CALLS',
                ),
              ]),
        ),
        body: TabBarView(children: [
          Container(
              child: Center(
            child: Text('CHATS', style: TextStyle(fontSize: 30)),
          )),
          Container(
              child: Center(
            child: Text('STATUS', style: TextStyle(fontSize: 30)),
          )),
          Container(
              child: Center(
            child: Text('CALLS', style: TextStyle(fontSize: 30)),
          ))
        ]),
      ),
    );
  }
}
