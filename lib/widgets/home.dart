import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_portfolio/widgets/appBar.dart';
import 'package:flutter_portfolio/widgets/drawer.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key}) {
    // Sort routeData
    final List<MapEntry<String, String>> sortedEntries = List.generate(
      routeData['widget'].length,
          (index) => MapEntry(routeData['widget'][index], routeData['widgetRouteName'][index]),
    )..sort((a, b) => a.key.compareTo(b.key));

    // Reassign sorted values back to routeData
    routeData['widget'] = sortedEntries.map((entry) => entry.key).toList();
    routeData['widgetRouteName'] = sortedEntries.map((entry) => entry.value).toList();
  }

  final Map routeData = {
    'widget': ["Text Animated", "Buttons", "Dismissable Widget", "Image Picker", "Tab Bar", "Snack Bar", "DropDown Widget", "Bottom Nav Bar", "Forms", "List Grid", "Action Slider", "Carousel View", "Local Notification"],

    'widgetRouteName': ["animatedWidget", "buttonsWidget", "dismissableWidget", "imagePickerWidget", "tabBarWidget", "snackBarWidget", "dropDownWidget", "bottomNavBar", "formWidget", "listGrid", "actionSlider", "carouselView", "localNotification"]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(titleText: "Sample Widgets"),
      drawer: DrawerWidget().myDrawer,
      body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: routeData["widget"].length,
                padding: const EdgeInsets.all(8),
                itemBuilder: (ctx, index) {
                  return Container(
                    padding: EdgeInsets.fromLTRB(6, 2, 6, 2),
                    margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                    child: ListTile(
                      title: Text(routeData["widget"][index]),
                      trailing: const Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        context.push('/${routeData["widgetRouteName"][index]}');
                      },
                    ),
                  );
                },
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
              child: ListTile(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
