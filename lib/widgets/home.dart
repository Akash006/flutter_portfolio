import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_portfolio/widgets/appBar.dart';
import 'package:flutter_portfolio/widgets/drawer.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});

  Map routeData = {
    'widget': ["Text Animated", "Buttons", "Dismissable Widget", "Image Picker", "Tab Bar", "Snack Bar", "DropDown Widget", "Bottom Nav Bar", "Forms", "List Grid"],
    'widgetRouteName': ["animatedWidget", "buttonsWidget", "dismissableWidget", "imagePickerWidget", "tabBarWidget", "snackBarWidget", "dropDownWidget", "bottomNavBar", "formWidget", "listGrid"]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(titleText: "Sample Widgets"),
      drawer: DrawerWidget().myDrawer,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: routeData["widget"].length,
              padding: EdgeInsets.all(8),
              itemBuilder: (ctx, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      routeData["widget"][index]
                    ),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      context.push('/${routeData["widgetRouteName"][index]}');
                    },
                  ),
                );
              },
            ),
          ),
          // Spacer to create maximum space between the list and the bottom card
          const SizedBox(height: 16),
          Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              tileColor: Colors.red[600],
              title: const Center(
                child: Text(
                  "Error Page Route",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: (){
                context.push('/error');
              },
            ),
          ),
        ],
      ),
    );
  }
}
