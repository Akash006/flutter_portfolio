import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_portfolio/widgets/appBar.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});

  Map routeData = {
    'widget': ["Text Animated", "Buttons" ],
    'widgetRouteName': ["animatedWidget", "buttonsWidget" ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(titleText: "Sample Widgets"),
      body: Container(
        child: ListView.builder(
          itemCount: routeData["widget"].length,
            itemBuilder: (ctx, index) {
              return Card(
                child: ListTile(
                  title: Text(routeData["widget"][index],
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  onTap: (){
                    print('/${routeData["widgetRouteName"][index]}');
                    context.push('/${routeData["widgetRouteName"][index]}');
                  },
                ),
              );
            }
        ),
      ),
    );
  }
}