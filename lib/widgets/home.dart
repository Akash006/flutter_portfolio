import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/appBar.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});

  Map fruit_person = {
    'fruit': ["Organe", "Mango", "PineApple", "Apple", "Kiwi", "Organe", "Mango", "PineApple", "Apple", "Kiwi", "Organe", "Mango", "PineApple", "Apple", "Kiwi"],
    'person': ["Akash", "Sagar", "Mohit", "Mayank", "Divyank", "Akash", "Sagar", "Mohit", "Mayank", "Divyank", "Akash", "Sagar", "Mohit", "Mayank", "Divyank"]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(titleText: "Sample Widgets"),
      body: Container(
        child: ListView.builder(
          itemCount: fruit_person["fruit"].length,
            itemBuilder: (ctx, index) {
              return Card(
                child: ListTile(
                  title: Text(fruit_person["fruit"][index]),
                  subtitle: Text(fruit_person["person"][index]),
                  leading: Icon(Icons.add_business_sharp),
                  onTap: (){
                    print(fruit_person["fruit"][index]);
                  },
                ),
              );
            }
        ),
      ),
    );
  }
}