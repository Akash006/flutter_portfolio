import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/notificationLocal.dart';

class localNotificationWidget extends StatelessWidget {
  const localNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Local Notifications")),
      body: Container(
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                icon: Icon(Icons.notifications_outlined),
                onPressed: () {
                  LocalNotifications.showSimpleNotification(
                      title: "Simple Notification",
                      body: "This is a simple notification",
                      payload: "This is simple data");
                },
                label: Text("Simple Notification"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
