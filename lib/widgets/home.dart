import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_portfolio/widgets/appBar.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});

  Map fruit_person = {
    'widget': ["Animated", "Mango" ],
    'widgetRouteName': ["animatedWidget", "Sagar" ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(titleText: "Sample Widgets"),
      body: Container(
        child: ListView.builder(
          itemCount: fruit_person["widget"].length,
            itemBuilder: (ctx, index) {
              return Card(
                child: ListTile(
                  title: Text(fruit_person["widget"][index]),
                  subtitle: Text(fruit_person["widgetRouteName"][index]),
                  leading: Icon(Icons.add_business_sharp),
                  onTap: (){
                    print(fruit_person["widget"][index]);
                    context.push('/animatedWidget');
                  },
                ),
              );
            }
        ),
      ),
    );
  }
}