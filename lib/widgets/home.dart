import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_portfolio/widgets/appBar.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});

  Map routeData = {
    'widget': ["Text Animated", "Buttons", "Dismissable Widget", "Image Picker", "Tab Bar", "Snack Bar", "DropDown Widget"],
    'widgetRouteName': ["animatedWidget", "buttonsWidget", "dismissableWidget", "imagePickerWidget", "tabBarWidget", "snackBarWidget", "dropDownWidget" ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(titleText: "Sample Widgets"),
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
                      routeData["widget"][index],
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      context.push('/${routeData["widgetRouteName"][index]}');
                    },
                  ),
                );
              },
            ),
          ),
          // Spacer to create maximum space between the list and the bottom card
          SizedBox(height: 16),
          Card(
            color: Colors.red,
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Center(
                child: Text(
                  "Error Page Route",
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
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
