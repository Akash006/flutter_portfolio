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
      body: Container(
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
            }),
      ),
    );
  }
}
